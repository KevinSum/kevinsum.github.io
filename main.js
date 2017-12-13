// Var to store the direction the player is facing
var facing = 1; // 1 = right, 0 = left

// emit variables
var emit_duration = 0;
var emit_boolean = 1;

// z x button variables
var button_duration = 1;
var button_boolean = 0;

//computer boolean
var computer_boolean = 0; //check if player is standing on computer, doesn't work yet
var computer_on = 0;

// basketball variables
var basketball_dribble_distance = 0; // How far away the ball is from the hand
var basketball_velocity = 4; // velocity of ball 

// Var to store slide number
var slide = 1;

// Var to store text scale. Will be changed
var textScale = 1;

// Nudges text down
var textVerticalShift = 30;



// Create the state that will contain the whole game
var mainState = {  
    preload: function() {  
        
        
        // Here we preload the assets
        game.load.image('floor', 'assets/ground.png');
        game.load.spritesheet('stickman', 'assets/newspritesheet.png', 230, 230);
        game.load.spritesheet('computer', 'assets/computer.png', 110, 140);
        game.load.image('basketball', 'assets/Basketball.png');
        game.load.image('emit', 'assets/emit.png');
        game.load.image('ground', 'assets/ground.png');
        game.load.image('invisible', 'assets/invisible.png');
        game.load.audio('pop', 'assets/pop.wav');

        game.load.image('slide_1', 'assets/slide_1.png');
        game.load.image('slide_2', 'assets/slide_2.png');
        game.load.image('slide_3', 'assets/slide_3.png');
        game.load.image('slide_4', 'assets/slide_4.png');
        game.load.image('slide_5', 'assets/slide_5.png');
        game.load.image('slide_6', 'assets/slide_6.png');
    },
    create: function() {  
        // Create game
        
        // group to sit as background
        group1 = game.add.group();
        group2 = game.add.group();
        
        //have the game centered
        this.scale.pageAlignHorizontally = true;
        this.scale.pageAlignVertically = true;
        
        // Set the background color
        game.stage.backgroundColor = '#82CAFA';

        // Start the Arcade physics system (for movements and collisions)
        game.physics.startSystem(Phaser.Physics.ARCADE);

        // Add the physics engine to all game objects
        game.world.enableBody = true;
        
        // Variables to store keys pressed
        this.cursor = game.input.keyboard.createCursorKeys();
        this.x = game.input.keyboard.addKey(Phaser.Keyboard.X);
        this.z = game.input.keyboard.addKey(Phaser.Keyboard.Z);
            
        // Create pop sound
        pop = game.add.audio('pop');
        
        // For youtube link
        this.button = game.add.button(game.world.centerX - 405, game.world.centerY - 120, 'invisible', function () { window.open("https://github.com/KevinSum/Plugins", "_blank");}, this);
        this.button.scale.setTo(7.6, 1.1);

        // Create text slide pngs
        this.slide_1 = game.add.sprite(width / 2, textVerticalShift, "slide_1");
        textScale = (width / this.slide_1.width) - (width / this.slide_1.width)/20; // Set scale of text
        this.slide_1.anchor.setTo(0.5, 0);
        this.slide_1.scale.setTo(textScale, textScale);
        group1.add(this.slide_1);

        this.slide_2 = game.add.sprite(width / 2, textVerticalShift, "slide_2");
        textScale2 = (width / this.slide_2.width) - (width / this.slide_2.width) / 20;
        this.slide_2.anchor.setTo(0.5, 0);
        this.slide_2.scale.setTo(textScale2, textScale2);
        group1.add(this.slide_2);

        this.slide_3 = game.add.sprite(width / 2, textVerticalShift, "slide_3");
        textScale3 = (width / this.slide_3.width) - (width / this.slide_3.width) / 20;
        this.slide_3.anchor.setTo(0.5, 0);
        this.slide_3.scale.setTo(textScale3, textScale3);
        group1.add(this.slide_3);

        this.slide_4 = game.add.sprite(width / 2, textVerticalShift, "slide_4");
        textScale4 = (width / this.slide_4.width) - (width / this.slide_4.width) / 20;
        this.slide_4.anchor.setTo(0.5, 0);
        this.slide_4.scale.setTo(textScale4, textScale4);
        group1.add(this.slide_4);

        this.slide_5 = game.add.sprite(width / 2, textVerticalShift, "slide_5");
        textScale5 = (width / this.slide_5.width) - (width / this.slide_5.width) / 20;
        this.slide_5.anchor.setTo(0.5, 0);
        this.slide_5.scale.setTo(textScale5, textScale5);
        group1.add(this.slide_5);

        this.slide_6 = game.add.sprite(width / 2, height/2 - 100, "slide_6");
        this.slide_6.anchor.setTo(0.5, 0.5);
        this.slide_6.scale.setTo(textScale, textScale);
        group1.add(this.slide_6);

        // Create the player in the middle of the game
        this.player = game.add.sprite(width/2, height - 170 , 'stickman');
        this.player.anchor.setTo(0.5);
        group2.add(this.player);
        
        // Create basketball
        this.basketball = game.add.sprite(this.player.position.x, this.player.position.y, 'basketball');
        this.basketball.anchor.setTo(0.5);
        
        // Create computer
        this.computer = game.add.sprite(950, height - 100, 'computer');
        this.computer.anchor.setTo(0.5);
        group1.add(this.computer)
        this.computer.frame = 1;
        
        //Create emits
        this.emit = game.add.sprite(this.player.position.x, this.player.position.y , 'emit'); 
        this.emit.anchor.setTo(0.5);
        
        // Initialize animation
        this.player.animations.add('right', [1, 0], 4, true);
        this.player.animations.add('left', [7, 6], 4, true);
        this.player.animations.add('hatRight', [3, 2], 4, true);
        this.player.animations.add('hatLeft', [9, 8], 4, true);
        this.player.animations.add('wrenchRight', [5, 4], 4, true);
        this.player.animations.add('wrenchLeft', [11, 10], 4, true);

        // Add gravity to make it fall
        this.player.body.gravity.y = 600;
        
        // Create groups that will contain our objects
        this.floors = game.add.group();
        
        // Make floor
        for (var i = 0; i < width/128; i++) {
            var floor = game.add.sprite(128*i, height - 32, 'floor');
            this.floors.add(floor);
            floor.body.immovable = true; 
        } 
        
        // Font settings
        var title = { font: " 50px Century Gothic", fill: "#000000", align: "center"};
        title.stroke = '#ffffff';
        title.strokeThickness = 1;
        var subheading = { font: "40px Century Gothic", fill: "#000000", align: "center"};
        subheading.stroke = '#ffffff';
        subheading.strokeThickness = 1;
        var subheading2 = { font: "40px Century Gothic", fill: "#000000", align: "left"};
        subheading2.stroke = '#ffffff';
        subheading2.strokeThickness = 1;
        var content = { font: "32px Century Gothic", fill: "#000000", align: "left"};
        content.stroke = '#ffffff';
        content.strokeThickness = 1;

        pop.play();
    },

    
    
    update: function() {  
        // Here we update the game 60 times per second

        // Make messages invisible
        this.slide_1.visible = false;
        this.slide_2.visible = false;
        this.slide_3.visible = false;
        this.slide_4.visible = false;
        this.slide_5.visible = false;
        this.slide_6.visible = false;

        //Make messages visible for respective text
        if (slide == 1) {
            this.slide_1.visible = true;

        }
        if (slide == 2) {
            this.slide_2.visible = true;

        }
        if (slide == 3) {
            this.slide_3.visible = true;
        }
        if (slide == 4) {
            this.slide_4.visible = true;
            this.button.visible = true; //Makes youtube link work
            this.computer.visible = true;
            if (computer_boolean == 0) {
                this.computer.position.x = this.player.position.x + 120; // Place computer
                computer_boolean = 1;
            }
        } else {
            this.computer.visible = false;
            computer_boolean = 0;
        }
        if (slide == 5) {
            this.slide_5.visible = true;
        }
        if (slide == 6) {
            this.slide_6.visible = true;
        }
        
        // Move the player when an arrow key is pressed
        if (this.cursor.left.isDown && this.player.position.x > 0) {
            this.player.body.velocity.x = -600; // Move left
            if(slide == 1 || slide == 4 || slide == 5 || slide == 6){
                this.player.animations.play('left'); // Play moving left animation without tools  
            }
            if(slide == 2){
                this.player.animations.play('hatLeft'); // Play moving left animation with hat   
            }
            if(slide == 3){
                this.player.animations.play('wrenchLeft'); // Play moving left animation with wrench
            }
            facing = '0'; // 0 = left
        }
        else if (this.cursor.right.isDown && this.player.position.x < this.game.width - 50) {
            this.player.body.velocity.x = 600; //Move right
            if(slide == 1 || slide == 4 || slide == 5 || slide == 6){
                this.player.animations.play('right'); // Play moving right animation without tools
            }
            if(slide == 2){
                this.player.animations.play('hatRight'); // Play moving right animation with hat 
            }
            if(slide == 3){
                this.player.animations.play('wrenchRight'); // Play moving right animation with wrench
            }
            facing = '1'; // 1 = right
        }
        else{
            this.player.body.velocity.x = 0; //Set velocity to 0 when no key is pressed
            this.player.animations.stop(); // Stop animation, makes game faster
            if (facing == 0){
                if(slide == 1 || slide == 4 || slide == 5 || slide == 6){
                    this.player.frame = 6; // Set idle frame when facing left
                }
                if(slide == 2){
                    this.player.frame = 8; // Set idle frame when facing left with hat
                }
                if(slide == 3){
                    this.player.frame = 10; // Set idle frame when facing left with wrench
                }
            }
            if (facing == 1){
                if(slide == 1 || slide == 4 || slide == 5 || slide == 6){
                    this.player.frame = 0; // Set idle frame when facing right
                }
                if(slide == 2){
                    this.player.frame = 2; // Set idle frame when facing right with hat
                }
                if(slide == 3){
                    this.player.frame = 4; // Set idle frame when facing right with wrench
                }
            }
        }

        // Make the player and the floors collide
        game.physics.arcade.collide(this.player, this.floors);
        
        // Make the player jump if he is touching the ground
        if (this.cursor.up.isDown && this.player.body.touching.down){
            this.player.body.velocity.y = -400; 
        }
        
        // Basketball physics and turn on when it's on the right slide
        if (slide == 5){
            this.basketball.visible = true;
            if (facing == 1){ // move ball so that it pops into the other hand when player turns
                this.basketball.position.x = this.player.position.x - 35;
            }else{
                this.basketball.position.x = this.player.position.x + 35;
            }
            if (this.player.body.touching.down){
                this.basketball.position.y = this.player.position.y + 60 + basketball_dribble_distance;
                basketball_dribble_distance = basketball_dribble_distance + basketball_velocity;
                if(basketball_dribble_distance == 60 || basketball_dribble_distance == 0){
                    basketball_velocity = basketball_velocity * -1;
                }
            }else{
                this.basketball.position.y = this.player.position.y + 60 + basketball_dribble_distance;
            }
        }else{
            this.basketball.visible = false;
        }
        
        // Chooses frame for when player is in midair
        if (!this.player.body.touching.down){
            this.player.animations.stop();
            if(facing == 0){
                if(slide == 1 || slide == 4 || slide == 5 || slide == 6){
                    this.player.frame = 7; // Set frame when jumping left
                }
                if(slide == 2){
                    this.player.frame = 9; // Set frame when jumping left with hat
                }
                if(slide == 3){
                    this.player.frame = 11; // Set frame when jumping left with wrench
                }
            }
            if(facing == 1){
                if(slide == 1 || slide == 4 || slide == 5 || slide == 6){
                    this.player.frame = 1; // Set frame when jumping right
                }
                if(slide == 2){
                    this.player.frame = 3; // Set frame when jumping right with hat
                }
                if(slide == 3){
                    this.player.frame = 5; // Set frame when jumping right with wrench
                }
            }
        }
        
        // Next slide and button z and x checks
        if ( this.x.isDown && slide != 6  && button_boolean == 0){
            pop.play(); // Player sound
            this.emit.visible = true; // Emit sprite
            emit_boolean = 1;
            slide = slide + 1;
            button_boolean = 1;
        } 
        if ( this.z.isDown && slide != 1  && button_boolean == 0){
            pop.play(); // Player sound
            this.emit.visible = true; // Emit sprite
            emit_boolean = 1;
            slide = slide - 1;
            button_boolean = 1;
        } 
        
        // Timer for how long emit_sprite is visible
        if (emit_boolean == 1){
            emit_duration = emit_duration + 1;
        }
        if (emit_duration == 6){
            this.emit.visible = false;
            emit_boolean = 0;
            emit_duration = 0;
        }
        
        //Timer for button z and xzz
        if (button_boolean == 1){
            button_duration = button_duration + 1;
        }
        if (button_duration == 15){
            button_boolean = 0;
            button_duration = 0;
        } 
        
        //Move stuff like emits and ball with sprite
        this.emit.position.x = this.player.position.x;
        this.emit.position.y = this.player.position.y;
    },  
};

// Initialize the game and start our state
var height = window.screen.availHeight - window.screen.availHeight/10;
var width = window.screen.availWidth - window.screen.availWidth/50;
var game = new Phaser.Game(width, height);  
game.state.add('main', mainState);  
game.state.start('main');