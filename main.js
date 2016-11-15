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
        this.button = game.add.button(game.world.centerX - 620, 460, 'invisible', function(){ window.open("http://www.youtube.com/user/KNJcovers", "_blank");}, this);
        this.button.scale.setTo(14.5, 1.1);


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
        
        // Messages
        this.message1 = game.add.text(this.game.width/2, 50, "Kevin Sum\n\nInteractive CV\nUse arrow keys to move\n\n'x' to move to next slide\n\n'z' to move to previous slide", title);
        this.message1.anchor.setTo(0.5, 0);
        
        this.message2title = game.add.text(this.game.width/2, 5, "Education", title);
        this.message2title.anchor.setTo(0.5, 0);
        this.message2uni = game.add.text(this.game.width/2, 70, "Currently undertaking - University of York (2015-2020)", subheading);
        this.message2uni.anchor.setTo(0.5, 0);
        this.message2kes = game.add.text(this.game.width/2, 350, "King Edward's School (2008-2015)", subheading);
        this.message2kes.anchor.setTo(0.5, 0);
        this.message2message = game.add.text(this.game.width/2, 130, "Meng Electronic Engineering with Music Technology Systems\n    Averaged 2:2 in first year(58%)\n    Modules include - Maths and programming, Electronic Hardware and Systems,\n    Analogue and Digital Electronics, Signals and Systems and \n    Recording studio Techniques\n\n\nInternational Baccalaureate\n    31 points - HL physics - 5, HL Chesmitry - 5, HL Maths - 4\n\nIGCSE - 6 A*, 1 A, 4 Bs", content);
        this.message2message.anchor.setTo(0.5, 0);
        
        this.message3title = game.add.text(this.game.width/2, 5, "Work Experience\n\n2013", title);
        this.message3title.anchor.setTo(0.5, 0);
        this.message3 = game.add.text(this.game.width/2, 200, "Jaguar Land Rover - Vehicle Safety Department\n     Assisted in setting up vehicle testing rigs, such as for stress tests and\n     airbag tests\n\nAero Engine Controls - Electronics (1 week)\n     Work shadowing, as well as several soldering jobs ", content)
        this.message3.anchor.setTo(0.5, 0);
        
        this.message4title = game.add.text(this.game.width/2, 5, "Skills", title);
        this.message4title.anchor.setTo(0.5, 0);
        this.message4sub = game.add.text(this.game.width/2 - 450, 70, "Programming\n\n\nElectronics\n\n\n\nDriving", subheading2);
        this.message4sub.anchor.setTo(0.5, 0);
        this.message4 = game.add.text(this.game.width/2, 130, "C    Java    Javascript    HTML    Visual Basic\n\n\n\nKnowledgeable in circuit theory/building/analysis and logic design\nAble to design logic on Xilenx ISE\n\n\n\nCar included", content)
        this.message4.anchor.setTo(0.5, 0);
        
        this.message5title = game.add.text(this.game.width/2, 5, "Hobbies", title);
        this.message5title.anchor.setTo(0.5, 0);
        this.message5sub = game.add.text(this.game.width/2 - 450, 70, "Basketball\n\n\n\n\nMusic Production", subheading2);
        this.message5sub.anchor.setTo(0.5, 0);
        this.message5 = game.add.text(this.game.width/2, 130, "Avid basketball player. Am the vice-captain for the Vanbrugh College\nBasketball team at the University of York, where I have to help organise and run\ntraining sessions as well as lead the team in the inter-collegiate basketball\nleague games. Can't dunk (yet)\n\n\nKnowledgeable in music production and the process involved in producing a\ntrack. Regularly post covers of anime and video game music on youtube in\nmy free time.", content)
        this.message5.anchor.setTo(0.5, 0);
        this.message6 = game.add.text(this.game.width/2, height/2 - 200, "Contact\n\nEmail: kkss501@york.ac.uk\nPhone number: +44 7528 671147", title)
        this.message6.anchor.setTo(0.5, 0);
        
        //this.message5.addColor('#0D46C1', 372);
        //this.message5.addColor('#000000', 404);

        pop.play();
    },

    
    
    update: function() {  
        // Here we update the game 60 times per secon
        
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
        
        // Make messages invisible
        this.button.visible = false;
        this.message1.visible = false;
        this.message2title.visible = false;
        this.message2uni.visible = false;
        this.message2kes.visible = false;
        this.message2message.visible = false;
        this.message3.visible = false;
        this.message3title.visible = false;
        this.message4title.visible = false;
        this.message4sub.visible = false;
        this.message4.visible = false;
        this.message5title.visible = false;
        this.message5sub.visible = false;
        this.message5.visible = false;
        this.message6.visible = false;
        //Make messages visible for respective text
        if (slide == 1){
            this.message1.visible = true;
        }
        if (slide == 2){
            this.message2title.visible = true;
            this.message2uni.visible = true;
            this.message2kes.visible = true;
            this.message2message.visible = true;
        }
        if (slide == 3){
            this.message3title.visible = true;
            this.message3.visible = true;
        }
        if (slide == 4){
            this.message4title.visible = true;
            this.message4sub.visible = true;
            this.message4.visible = true;
            this.computer.visible = true;
            if(computer_boolean == 0){
                this.computer.position.x = this.player.position.x + 120; // Place button
                computer_boolean = 1;
            }
        }else{
            this.computer.visible = false;
            computer_boolean = 0;
        }
        if (slide == 5){
            this.button.visible = true; //Makes youtube link work
            this.message5.visible = true;
            this.message5title.visible = true;
            this.message5sub.visible = true;
        }
        if (slide == 6){
            this.message6.visible = true;
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