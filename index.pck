GDPC                                                                                D   res://.import/CV Tile map.png-be3047f89ff9d1c91215c2b52e89f9b5.stex �      3      �t����m������D   res://.import/Trainer Red.png-c4ec5765eeb5406babdd3fbf01cd9961.stex �"      9      �b��F�(�z�T<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex 6      �      �p��<f��r�g��.�   res://Label.gd.remap��              ��f�H���P<\Lj   res://Label.gdc �      r      1���+�e;<7�k�   res://Player.gd.remap   ��      !       ��0�F �qq��dX��   res://Player.gdc@      H      \:i�\�?*�9j��0   res://Player.tscn   �      	      x�.���k/,��ujI   res://Sprites.gd.remap  Ѓ      "       �U�&�0��[�F'�   res://Sprites.gdc   �            ���T>`�vR6?��$   res://assets/CV Tile map.png.import �      �      Z	9�!�R��VQ��Z$   res://assets/Trainer Red.png.import �2      �      e܈�!��57�"�   res://default_env.tres  p5      �       um�`�N��<*ỳ�8   res://icon.png   �      i      ����󈘥Ey��
�   res://icon.png.import   �C      �      �����%��(#AB�   res://interactiveCV.tscn@F      @=      C����54
+Ǭ��   res://project.binaryp�      �      ���Ox(Y�F��ç�GDSC            5      ����ڶ��   ���������Ŷ�   �����϶�   �������Ŷ���   ����׶��   �������Ӷ���   �������¶���      ..                                                      	      
                     (      0      1      3      3YYY;�  �  PQYYYY0�  PQV�  -YYY0�  P�  QV�  �  �  PQT�  �  �  P�  P�  QQY�  -Y`              GDSC         @   �     ������������τ�   ��������󶶶   ��������������   ���������Ŷ�   ������Ŷ   ��������ض��   ����Ҷ��   ��������������Ķ   �����Ӷ�   ���������ڶ�   �����Ѷ�   �����϶�   ����������Ҷ���   ���������������������Ӷ�   �������Ӷ���   �������Ŷ���   ����׶��   ������������������ض   ����¶��   ����������������Ҷ��   ���϶���   ��������Ӷ��   ��������Ӷ��   ���ƶ���   ���������������Ӷ���                         AnimationPlayer       PlayerSprite      ui_left       left                   ui_right      right         ui_up         up        ui_down       down                               	                           	      
         &      )      ,      /      0      7      <      =      >      D      N      U      \      ]      ^      e      k      l      m      r      {       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0   #  1   ,  2   3  3   <  4   I  5   Z  6   ^  7   a  8   e  9   q  :   x  ;   y  <   }  =   �  >   �  ?   �  @   3YYY:�  Y:�  �  YYYY;�  �  PQY;�  �  PQY;�  �  PQY;�  Y;�  Y;�  YY;�	  �  PQY;�
  �  YYY0�  PQV�  �  �  PQT�  PQ�  �  �  P�  Q�  �  �  P�  QYYY0�  P�  QV�  �  �  PQ�  �  �  &�
  V�  &�  T�  P�  QV�  �  T�  P�  Q�  �  �  P�  R�  Q�  �  �  �  P�  �  R�  Q�  &�  P�  P�  R�  QR�  �  QV�  �
  �  �  '�  T�  P�	  QV�  �  T�  P�
  Q�  �  �  P�  R�  Q�  �  �  �  P�  R�  Q�  &�  P�  P�  R�  QR�  �  QV�  �
  �  �  '�  T�  P�  QV�  �  T�  P�  Q�  �  �  P�  R�  Q�  �  �  �  P�  R�  �  Q�  &�  P�  P�  R�  QR�  �  QV�  �
  �  �  '�  T�  P�  QV�  �  T�  P�  Q�  �  �  P�  R�  Q�  �  �  �  P�  R�  �  Q�  &�  P�  P�  R�  QR�  �  QV�  �
  �  �  (V�  �
  �  �  &�  T�  PQ�  �  V�  �  T�  P�  QY�  &�
  V�  �  P�  �  Q�  �  �  PQ�  &�  �  V�  �
  �  `        [gd_scene load_steps=7 format=2]

[ext_resource path="res://assets/Trainer Red.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 5.59636, 5.47579 )

[sub_resource type="Animation" id=2]
resource_name = "down"
length = 0.6
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("PlayerSprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.15, 0.3, 0.45 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 1,
"values": [ 8, 6, 7, 6 ]
}

[sub_resource type="Animation" id=3]
resource_name = "left"
length = 0.6
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("PlayerSprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.15, 0.3, 0.45 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 1,
"values": [ 4, 3, 5, 3 ]
}

[sub_resource type="Animation" id=4]
resource_name = "right"
length = 0.6
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("PlayerSprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.15, 0.3, 0.45 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 1,
"values": [ 11, 9, 10, 9 ]
}

[sub_resource type="Animation" id=5]
length = 0.6
loop = true
step = 0.05
tracks/0/type = "value"
tracks/0/path = NodePath("PlayerSprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.15, 0.3, 0.45 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 1,
"values": [ 2, 0, 1, 0 ]
}

[node name="Player" type="KinematicBody2D"]

[node name="PlayerSprite" type="Sprite" parent="."]
position = Vector2( 8, 0 )
z_index = 1
z_as_relative = false
texture = ExtResource( 1 )
vframes = 4
hframes = 3
frame = 5

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 8.25371, 9.23946 )
shape = SubResource( 1 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/down = SubResource( 2 )
anims/left = SubResource( 3 )
anims/right = SubResource( 4 )
anims/up = SubResource( 5 )
 GDSC            v      �����Ӷ�   ����������������ζ��   �����϶�   �������Ŷ���   ����׶��   ������Ŷ   ���Ӷ���   ����   �����������ض���   ��������Ŷ��   ���������Ŷ�   ������������������ض   ����������Ӷ   �������Ӷ���   ���������Ŷ�   ϶��   ����������ζ             Sprite        Player                                 	      
                     	      
               !      #      $      %      ,      6      @      I      Q      Z      d      k      n      3YYY;�  YYY0�  PQV�  -YYY0�  P�  QV�  �  PQ�  -YYY0�  P�  QV�  )�  �  T�  PQV�  &�  T�	  PQ�  V�  ;�
  �  T�  PQ�  ;�  �  P�  Q�  ;�  �  T�  PQ�  &�
  T�  �  T�  V�  �  T�  P�  Q�  (V�  �  T�  PQ`         GDST`   �              PNG �PNG

   IHDR   `   �   �
n!  �IDATx���k�@�_�D��R���=�^�_қ��"��]�����
{(ҋPZ���j�[Yu��d���$y�����}�&ɼ��#K�Ó�9�M��y��-�yTbI}cuy�k@n��X"*�h�����D����5����u�������j}�. ]�z�.��}��&�H��J��OT� ��W^���V(�h��hR_l�l��6�<����
��"�_��<M��q&�	=���P���&5�O�������2y]��*�,¡R�\cy&���|���.hE�]��dr듒��Śд\sN������% q�.w2�~hh� ��8�������A?��h���ܑK��O�y h���
C�JǶ%�&���xPC���s�.)�~ w�o�'��af��� A�� �z>�ğբq�1���0�~ �:��vA?��Z�k�	��"�hH��`f� �t.��@�Ym�4M)MS������Q��Nw����1���#"��������2al��N�5�d2i���k�̗W��������:�w~U�4��d�h eb�w[���F�:C�1�N#$�'��B����fR�-y�_��Ν��O��{eG�����]����hDg�1��t��7-���#�ǹ�*�X��kX8��^�gk�RS���B��S����<�g����OE�:�2�r�~��l ݤ��F#�s)�T�ig�f3���.�ύ�P�p�|n#?�Nic8,<���}�I��������hf��/2���񻈳R��(H�)F�ɕ�s��s�g��&8@��ۣO�r��3uj�\�-��m���*m�^�ݩU��>��t���L�B�c�{�K���x����X�7$����6�:*��xn� `��Y���|Wy� �o@I�f���E�$7�%��b��(H������ E.�o��*�Ȇ�u���Fy���E?S�Or��y 3�0SG���(�u��o넓�G���Dw&6�ޯn�0T7~� 
b��DLd��z�"���L���A��S5�Bߧ`?�j(��x�m�c�)
�����S������Z��	#S��i�P���G� f` f|kA���;ʣ�)ns���-�LQ3N�}���<.���_�Q30 30                                           �U�9�#     IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/CV Tile map.png-be3047f89ff9d1c91215c2b52e89f9b5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/CV Tile map.png"
dest_files=[ "res://.import/CV Tile map.png-be3047f89ff9d1c91215c2b52e89f9b5.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDST`   �             PNG �PNG

   IHDR   `   �   ��l�  �IDATx��]+��<~��/*++W"�����W"+������ʕHdd$����'B� ���3��m��KN.�� |��/����yt�q�ߞ��w��E̡����n�M,����Q#�7X��}��f({��1��JT�9�� p���.�P�Y�#���'���,���+< ��	Q��
�c��խP�8��^��w`wy͜�Х��[a��[��9/ɮ���sޢok���GmC_e���Vh;'��Ntm�u����.�K	]��:��W�o-��IvS��ռ���6�� *������%)< rD������c�.��m���~��0.��`눦��h�e~��&}SxS	T����nlq���p��KRx��d�}�
�G!�y9Ą�3�	i�RP�L�v^A�E1/���߃|� ~�SH�9�E��|#�B+�$٭ ���_�fV���]�\�
cJ��3�k<ta�E@�1�2`cdD�]Pr�n�|���Q,�D��O*h/�s�I��O����o>�B)��AG} @\��:��tYdq�:�t� ��|�Z�͞R�'�#�nNV mt�=�kH^��.{���H�R�蛚��΋��$��Q\J�"�o��k�
�GP �^���д���,+P�w����*���s�x�X_�EvBP�|	��OR�	
趔R�Z���x������Mhz���1���������~uܜ&*_aS} �[�ԫ�'Gc%��OQd)b�j�ALiYd)�|�� ��V>������1����'�=��Z��DN
�\�|�c�"�􍘞� �yMxz�!.{S�E!�[`+�6���{�=՞�}��O0������!�ǥ%޵"��ϡ�V�#9r�˃.9�zH��s�"��vP  �9@���x ��  Q�>4�[Lvm�(m�v��xkY ��q'�<5�������園P��w@����b߹��ۤ�s�^M(�*^j2�m>\�� �9�<ŝD�����#��&F[!�KQ��whҘDk"j4��z �*��}
R�� �1����	NY@���.�V�4�-K\��M�� L���i
jWC�u�����������Ҝp�dG�&}�M�k�tMi�	hN��۾���U�+���{�S�RSiϩ�%��x��|.,-�"�
������͡����$���j�1B)���}R��sC�'���Co.����v�;( �����K�!ڀt�';*�~1��ה�w~��ْ���T�=��!g/5��b�
�P���������Cy�� i�tm��C�g��ג�sn>\K�(}vv"h?ҧ��<�[�-;�8%���9o}&�����S�1<�plO�s����&� �@*?��Ӏk0�����{��(��.J����%�
 @&r��CG �k�bXB~��Lȷ�Y�Bt$6��������'T�e~�`I�����$�L��)4i���i� T�yo�X�)��9�/&�(�h`}��y�|�y9'�I���v�ozm�hO�o`�]<��?� W�^��!����;���# ��U�Ќax&Xdi�;;��
-���7��O���d-��[��Z�wv��`k���t�w�?���q�+:���?3ݬ&�� ��S�Z���B�{�"�S�ݿ�� *W�K]�����B�w�Q����E	��:�V  }�٥���7��54��v7<�j��6����aV��:������\d)(X��(@��E�(wy�z�
'��������b}lW�~� �-�?<��dy�ɰ���WP�����@���%|V�����1c��\�0��(�����z-K��SQ�y��:'y+h�x!�)_#�=hJ'�$�{G �X���I�4 �H'�̣:��'����ra,�������>A��{򫧡9׆���a ��Oɚ�!��U
� p9X_��y[�����zd ���vE��\�����T�����f�]wσvx@ײ���VY�Ҟv}�[k<��r��̗aNC:�q�汫�F���Mea��\�z}4�<-�O�F3FBe#�v�D��zEx�����`�L�<�3�`!��|���H�#�կhmW�&_S���P�������x1~U� W~S��X? �C5~S� ���-��?ZC��� ��޾$��� �G��5����CN��yK`	����s�9�ú��z&��.��Š�sInk�k���m����JoK�%\W^�
*y8��ȿ%}k��MT��A�v(�ol�@�U\}7���O�>�fli���*�L4�!P4��7Y\�0$2c�G��A|�~�n���9G~���;]r֭E8B����q�#M2-l����~���[���=�- ��3��0F  d��!�s�夵�BVK~:G�g��ZJe/d�-��FbQ���WX`5\7Iv+��,
����[��N�_�o$I��?��oi�.�2l�՛�}_ �����CO�����@�1ۙ�	k��6,@~�B�*�ظJ�?Eg�(��L��:�9�WQ��i��
��\筞:זp��Ż��qV�@unӹIo���1ڇ_	���oy=�iS��H�8�W h�g��0�N�9h5;��bJk�����'��m0���%��?�ą�?�d��.L!	�ק=��0$��f�P(�K�~��G�MA$�N5��f
{i�2HB��L&��B���#��q�$P�r���ÖA�38��'G����U��T}l����!����]�9YE���x(�Py�� ��$�(� �O'�Gi�Me���~��2�nq�T�������9��L�R��t��^xꁠ�����9�ɰ@�
�|7&Ƃ`B � 8p_��H禩�*I5-3�EJ�Q�g�ӊ���,���2bf���#8/Ma���F��|�$�j]�zP���J_�'����t`0�Gv�����K�H!@o6�5�8��n�4
�5]��7y��]G��E�BRh2T䩩���t���Rѵ��7G��}���r�=�Bp����� �f�Wǔ�<��y�Mڮ׍�Q;�t �C�\1�~��Z۱����:���%�QF���S�\���|�x�����?�W��_Z~���B
�6���_<Ho���a:�aH~�XK6�5~�R[K���wU��q�[�>C��]yX[�1n)��U������ز����^�l��T�������x������;�6�E{L��5����x���#c��sT�ĩ�א���
�-vf��>�ۀb�(����XT�V�� ���W^�ߧ@���{N����;/�k)`��>����`)�GG��aI�"�#�<�t~���=R�Y�<��NӀ�o�32�� V�8V�� e��F) �d��y����kOR���;u���y0�RƋ�;���� �1
�ן����M���t�f��
0b�j�	������,
�;���o'Ņu�7�������t6��aH�;p��G������.*�L۹,
�w��k��0��7a;����x(�Z,q"Y�i��.�!�S���;=�6�8�e;̴�f�H�8Yf��f���C\ty���*��
@z3O%oŒ�w��59�Hh��(T�cW�����L�(���Ս�t���c�0}�Ü��^dq��~>XP������ٕkb,��Ra-�G���� �2G<���t��Ĩ�����v�W�"&}V���NX7s��s�"K;U�W1��%���Ԟ\)X�P}/�cs¦|��Yo��p@�Q�"�L�7 ���/H$����K����]Pp�I�g�4$��H�) Z���m�� ��ʃ(x�d�9���W�<�d/i�����l��=�2 �mxE�� ��Q�?Ua%�h-{����%i�Xz��fsQ�2��uXa׃�>�X����! 8�X4m}W}�g���)�W��b�    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Trainer Red.png-c4ec5765eeb5406babdd3fbf01cd9961.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/Trainer Red.png"
dest_files=[ "res://.import/Trainer Red.png-c4ec5765eeb5406babdd3fbf01cd9961.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_scene load_steps=18 format=2]

[ext_resource path="res://assets/CV Tile map.png" type="Texture" id=1]
[ext_resource path="res://Sprites.gd" type="Script" id=2]
[ext_resource path="res://Player.tscn" type="PackedScene" id=3]
[ext_resource path="res://Player.gd" type="Script" id=4]
[ext_resource path="res://Label.gd" type="Script" id=5]
[ext_resource path="res://assets/Trainer Red.png" type="Texture" id=6]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 4.92311, 3.96967, 11.9001, 3.58206, 11.7063, 12.4972, 4.92311, 12.3034 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 4.42764, 4.35728, 11.7923, 4.55109, 12.1799, 11.9157, 4.81525, 11.5281 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 4.9012, 4.93871, 11.6844, 4.55109, 12.6535, 12.4972, 4.5136, 13.0786 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 5.11691, 2.89279, 12.6754, 4.05562, 12.6754, 12.5831, 5.11691, 12.5831 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 5.14551, 3.87703, 12.8482, 4.54683, 10.5039, 12.5844, 5.81531, 11.5797 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 5.28882, 2.94603, 13.4287, 3.13985, 13.4287, 12.4426, 5.48262, 12.6364 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 5.0704, 4.6219, 12.4382, 4.6219, 12.7731, 10.3152, 5.7402, 11.6548 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 3.80591, 3.28233, 13.1831, 3.95213, 10.8388, 12.6595, 3.47102, 12.3246 )

[sub_resource type="ConvexPolygonShape2D" id=9]
points = PoolVector2Array( 3.88101, 4.28703, 11.9186, 3.61723, 13.9279, 12.6595, 6.8951, 11.6548 )

[sub_resource type="TileSet" id=10]
0/name = "Grass"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 32, 32, 16, 16 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shapes = [  ]
0/z_index = 0
1/name = "CV Tile map.png 1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 48, 0, 48, 48 )
1/tile_mode = 2
1/autotile/icon_coordinate = Vector2( 0, 0 )
1/autotile/tile_size = Vector2( 16, 16 )
1/autotile/spacing = 0
1/autotile/occluder_map = [  ]
1/autotile/navpoly_map = [  ]
1/autotile/z_index_map = [  ]
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shapes = [  ]
1/z_index = 0
2/name = "CV Tile map.png 2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 48, 48, 48 )
2/tile_mode = 2
2/autotile/icon_coordinate = Vector2( 0, 0 )
2/autotile/tile_size = Vector2( 16, 16 )
2/autotile/spacing = 0
2/autotile/occluder_map = [  ]
2/autotile/navpoly_map = [  ]
2/autotile/z_index_map = [  ]
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 9 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
2/z_index = 0

[sub_resource type="RectangleShape2D" id=11]
extents = Vector2( 6.83115, 6.39584 )

[node name="Map" type="Node2D"]

[node name="TileMap - Back" type="TileMap" parent="."]
tile_set = SubResource( 10 )
cell_size = Vector2( 16, 16 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0, 23, 0, 0, 24, 0, 0, 25, 0, 0, 26, 0, 0, 27, 0, 0, 28, 0, 0, 29, 0, 0, 30, 0, 0, 31, 0, 0, 65536, 0, 0, 65537, 0, 0, 65538, 0, 0, 65539, 0, 0, 65540, 0, 0, 65541, 0, 0, 65542, 0, 0, 65543, 0, 0, 65544, 0, 0, 65545, 0, 0, 65546, 0, 0, 65547, 0, 0, 65548, 0, 0, 65549, 0, 0, 65550, 0, 0, 65551, 0, 0, 65552, 0, 0, 65553, 0, 0, 65554, 0, 0, 65555, 0, 0, 65556, 0, 0, 65557, 0, 0, 65558, 0, 0, 65559, 0, 0, 65560, 0, 0, 65561, 0, 0, 65562, 0, 0, 65563, 0, 0, 65564, 0, 0, 65565, 0, 0, 65566, 0, 0, 65567, 0, 0, 131072, 0, 0, 131073, 0, 0, 131074, 0, 0, 131075, 0, 0, 131076, 0, 0, 131077, 0, 0, 131078, 0, 0, 131079, 0, 0, 131080, 0, 0, 131081, 0, 0, 131082, 0, 0, 131083, 0, 0, 131084, 0, 0, 131085, 0, 0, 131086, 0, 0, 131087, 0, 0, 131088, 0, 0, 131089, 0, 0, 131090, 0, 0, 131091, 0, 0, 131092, 0, 0, 131093, 0, 0, 131094, 0, 0, 131095, 0, 0, 131096, 0, 0, 131097, 0, 0, 131098, 0, 0, 131099, 0, 0, 131100, 0, 0, 131101, 0, 0, 131102, 0, 0, 131103, 0, 0, 196608, 0, 0, 196609, 0, 0, 196610, 0, 0, 196611, 0, 0, 196612, 0, 0, 196613, 0, 0, 196614, 0, 0, 196615, 0, 0, 196616, 0, 0, 196617, 0, 0, 196618, 0, 0, 196619, 0, 0, 196620, 0, 0, 196621, 0, 0, 196622, 0, 0, 196623, 0, 0, 196624, 0, 0, 196625, 0, 0, 196626, 0, 0, 196627, 0, 0, 196628, 0, 0, 196629, 0, 0, 196630, 0, 0, 196631, 0, 0, 196632, 0, 0, 196633, 0, 0, 196634, 0, 0, 196635, 0, 0, 196636, 0, 0, 196637, 0, 0, 196638, 0, 0, 196639, 0, 0, 262144, 0, 0, 262145, 0, 0, 262146, 0, 0, 262147, 0, 0, 262148, 0, 0, 262149, 0, 0, 262150, 0, 0, 262151, 0, 0, 262152, 0, 0, 262153, 0, 0, 262154, 0, 0, 262155, 0, 0, 262156, 0, 0, 262157, 0, 0, 262158, 0, 0, 262159, 0, 0, 262160, 0, 0, 262161, 0, 0, 262162, 0, 0, 262163, 0, 0, 262164, 0, 0, 262165, 0, 0, 262166, 0, 0, 262167, 0, 0, 262168, 0, 0, 262169, 0, 0, 262170, 0, 0, 262171, 0, 0, 262172, 0, 0, 262173, 0, 0, 262174, 0, 0, 262175, 0, 0, 327680, 0, 0, 327681, 0, 0, 327682, 0, 0, 327683, 0, 0, 327684, 0, 0, 327685, 0, 0, 327686, 0, 0, 327687, 0, 0, 327688, 0, 0, 327689, 0, 0, 327690, 0, 0, 327691, 0, 0, 327692, 0, 0, 327693, 0, 0, 327694, 0, 0, 327695, 0, 0, 327696, 0, 0, 327697, 0, 0, 327698, 0, 0, 327699, 0, 0, 327700, 0, 0, 327701, 0, 0, 327702, 0, 0, 327703, 0, 0, 327704, 0, 0, 327705, 0, 0, 327706, 0, 0, 327707, 0, 0, 327708, 0, 0, 327709, 0, 0, 327710, 0, 0, 327711, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393222, 0, 0, 393223, 0, 0, 393224, 0, 0, 393225, 0, 0, 393226, 0, 0, 393227, 0, 0, 393228, 0, 0, 393229, 0, 0, 393230, 0, 0, 393231, 0, 0, 393232, 0, 0, 393233, 0, 0, 393234, 0, 0, 393235, 0, 0, 393236, 0, 0, 393237, 0, 0, 393238, 0, 0, 393239, 0, 0, 393240, 0, 0, 393241, 0, 0, 393242, 0, 0, 393243, 0, 0, 393244, 0, 0, 393245, 0, 0, 393246, 0, 0, 393247, 0, 0, 458752, 0, 0, 458753, 0, 0, 458754, 0, 0, 458755, 0, 0, 458756, 0, 0, 458757, 0, 0, 458758, 0, 0, 458759, 0, 0, 458760, 0, 0, 458761, 0, 0, 458762, 0, 0, 458763, 0, 0, 458764, 0, 0, 458765, 0, 0, 458766, 0, 0, 458767, 0, 0, 458768, 0, 0, 458769, 0, 0, 458770, 0, 0, 458771, 0, 0, 458772, 0, 0, 458773, 0, 0, 458774, 0, 0, 458775, 0, 0, 458776, 0, 0, 458777, 0, 0, 458778, 0, 0, 458779, 0, 0, 458780, 0, 0, 458781, 0, 0, 458782, 0, 0, 458783, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 0, 0, 524300, 0, 0, 524301, 0, 0, 524302, 0, 0, 524303, 0, 0, 524304, 0, 0, 524305, 0, 0, 524306, 0, 0, 524307, 0, 0, 524308, 0, 0, 524309, 0, 0, 524310, 0, 0, 524311, 0, 0, 524312, 0, 0, 524313, 0, 0, 524314, 0, 0, 524315, 0, 0, 524316, 0, 0, 524317, 0, 0, 524318, 0, 0, 524319, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0, 589841, 0, 0, 589842, 0, 0, 589843, 0, 0, 589844, 0, 0, 589845, 0, 0, 589846, 0, 0, 589847, 0, 0, 589848, 0, 0, 589849, 0, 0, 589850, 0, 0, 589851, 0, 0, 589852, 0, 0, 589853, 0, 0, 589854, 0, 0, 589855, 0, 0, 655360, 0, 0, 655361, 0, 0, 655362, 0, 0, 655363, 0, 0, 655364, 0, 0, 655365, 0, 0, 655366, 0, 0, 655367, 0, 0, 655368, 0, 0, 655369, 0, 0, 655370, 0, 0, 655371, 0, 0, 655372, 0, 0, 655373, 0, 0, 655374, 0, 0, 655375, 0, 0, 655376, 0, 0, 655377, 0, 0, 655378, 0, 0, 655379, 0, 0, 655380, 0, 0, 655381, 0, 0, 655382, 0, 0, 655383, 0, 0, 655384, 0, 0, 655385, 0, 0, 655386, 0, 0, 655387, 0, 0, 655388, 0, 0, 655389, 0, 0, 655390, 0, 0, 655391, 0, 0, 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 720914, 0, 0, 720915, 0, 0, 720916, 0, 0, 720917, 0, 0, 720918, 0, 0, 720919, 0, 0, 720920, 0, 0, 720921, 0, 0, 720922, 0, 0, 720923, 0, 0, 720924, 0, 0, 720925, 0, 0, 720926, 0, 0, 720927, 0, 0, 786432, 0, 0, 786433, 0, 0, 786434, 0, 0, 786435, 0, 0, 786436, 0, 0, 786437, 0, 0, 786438, 0, 0, 786439, 0, 0, 786440, 0, 0, 786441, 0, 0, 786442, 0, 0, 786443, 0, 0, 786444, 0, 0, 786445, 0, 0, 786446, 0, 0, 786447, 0, 0, 786448, 0, 0, 786449, 0, 0, 786450, 0, 0, 786451, 0, 0, 786452, 0, 0, 786453, 0, 0, 786454, 0, 0, 786455, 0, 0, 786456, 0, 0, 786457, 0, 0, 786458, 0, 0, 786459, 0, 0, 786460, 0, 0, 786461, 0, 0, 786462, 0, 0, 786463, 0, 0, 851968, 0, 0, 851969, 0, 0, 851970, 0, 0, 851971, 0, 0, 851972, 0, 0, 851973, 0, 0, 851974, 0, 0, 851975, 0, 0, 851976, 0, 0, 851977, 0, 0, 851978, 0, 0, 851979, 0, 0, 851980, 0, 0, 851981, 0, 0, 851982, 0, 0, 851983, 0, 0, 851984, 0, 0, 851985, 0, 0, 851986, 0, 0, 851987, 0, 0, 851988, 0, 0, 851989, 0, 0, 851990, 0, 0, 851991, 0, 0, 851992, 0, 0, 851993, 0, 0, 851994, 0, 0, 851995, 0, 0, 851996, 0, 0, 851997, 0, 0, 851998, 0, 0, 851999, 0, 0, 917504, 0, 0, 917505, 0, 0, 917506, 0, 0, 917507, 0, 0, 917508, 0, 0, 917509, 0, 0, 917510, 0, 0, 917511, 0, 0, 917512, 0, 0, 917513, 0, 0, 917514, 0, 0, 917515, 0, 0, 917516, 0, 0, 917517, 0, 0, 917518, 0, 0, 917519, 0, 0, 917520, 0, 0, 917521, 0, 0, 917522, 0, 0, 917523, 0, 0, 917524, 0, 0, 917525, 0, 0, 917526, 0, 0, 917527, 0, 0, 917528, 0, 0, 917529, 0, 0, 917530, 0, 0, 917531, 0, 0, 917532, 0, 0, 917533, 0, 0, 917534, 0, 0, 917535, 0, 0, 983040, 0, 0, 983041, 0, 0, 983042, 0, 0, 983043, 0, 0, 983044, 0, 0, 983045, 0, 0, 983046, 0, 0, 983047, 0, 0, 983048, 0, 0, 983049, 0, 0, 983050, 0, 0, 983051, 0, 0, 983052, 0, 0, 983053, 0, 0, 983054, 0, 0, 983055, 0, 0, 983056, 0, 0, 983057, 0, 0, 983058, 0, 0, 983059, 0, 0, 983060, 0, 0, 983061, 0, 0, 983062, 0, 0, 983063, 0, 0, 983064, 0, 0, 983065, 0, 0, 983066, 0, 0, 983067, 0, 0, 983068, 0, 0, 983069, 0, 0, 983070, 0, 0, 983071, 0, 0, 1048576, 0, 0, 1048577, 0, 0, 1048578, 0, 0, 1048579, 0, 0, 1048580, 0, 0, 1048581, 0, 0, 1048582, 0, 0, 1048583, 0, 0, 1048584, 0, 0, 1048585, 0, 0, 1048586, 0, 0, 1048587, 0, 0, 1048588, 0, 0, 1048589, 0, 0, 1048590, 0, 0, 1048591, 0, 0, 1048592, 0, 0, 1048593, 0, 0, 1048594, 0, 0, 1048595, 0, 0, 1048596, 0, 0, 1048597, 0, 0, 1048598, 0, 0, 1048599, 0, 0, 1048600, 0, 0, 1048601, 0, 0, 1048602, 0, 0, 1048603, 0, 0, 1048604, 0, 0, 1048605, 0, 0, 1048606, 0, 0, 1048607, 0, 0, 1114112, 0, 0, 1114113, 0, 0, 1114114, 0, 0, 1114115, 0, 0, 1114116, 0, 0, 1114117, 0, 0, 1114118, 0, 0, 1114119, 0, 0, 1114120, 0, 0, 1114121, 0, 0, 1114122, 0, 0, 1114123, 0, 0, 1114124, 0, 0, 1114125, 0, 0, 1114126, 0, 0, 1114127, 0, 0, 1114128, 0, 0, 1114129, 0, 0, 1114130, 0, 0, 1114131, 0, 0, 1114132, 0, 0, 1114133, 0, 0, 1114134, 0, 0, 1114135, 0, 0, 1114136, 0, 0, 1114137, 0, 0, 1114138, 0, 0, 1114139, 0, 0, 1114140, 0, 0, 1114141, 0, 0, 1114142, 0, 0, 1114143, 0, 0 )

[node name="TileMap - Front" type="TileMap" parent="."]
tile_set = SubResource( 10 )
cell_size = Vector2( 16, 16 )
format = 1
tile_data = PoolIntArray( 458763, 1, 0, 458764, 1, 1, 458765, 1, 1, 458766, 1, 1, 458767, 1, 1, 458768, 1, 1, 458769, 1, 1, 458770, 1, 1, 458771, 1, 1, 458772, 1, 2, 524299, 1, 65536, 524300, 1, 131073, 524301, 1, 131073, 524302, 1, 131073, 524303, 1, 131073, 524304, 1, 131073, 524305, 1, 131073, 524306, 1, 131073, 524307, 1, 131073, 524308, 1, 65538, 589835, 1, 65536, 589836, 1, 131073, 589837, 1, 131073, 589838, 1, 131073, 589839, 1, 131073, 589840, 1, 131073, 589841, 1, 131073, 589842, 1, 131073, 589843, 1, 131073, 589844, 1, 65538, 655371, 1, 65536, 655372, 1, 131073, 655373, 1, 131073, 655374, 1, 131073, 655375, 1, 131073, 655376, 1, 131073, 655377, 1, 131073, 655378, 1, 131073, 655379, 1, 131073, 655380, 1, 65538, 720907, 1, 65536, 720908, 1, 131073, 720909, 1, 131073, 720910, 1, 131073, 720911, 1, 131073, 720912, 1, 131073, 720913, 1, 131073, 720914, 1, 131073, 720915, 1, 131073, 720916, 1, 65538, 786443, 1, 65536, 786444, 1, 131073, 786445, 1, 131073, 786446, 1, 131073, 786447, 1, 131073, 786448, 1, 131073, 786449, 1, 131073, 786450, 1, 131073, 786451, 1, 131073, 786452, 1, 65538, 851979, 1, 131072, 851980, 1, 131073, 851981, 1, 131073, 851982, 1, 131073, 851983, 1, 131073, 851984, 1, 131073, 851985, 1, 131073, 851986, 1, 131073, 851987, 1, 131073, 851988, 1, 131074 )

[node name="TileMap - Objects" type="TileMap" parent="."]
tile_set = SubResource( 10 )
cell_size = Vector2( 16, 16 )
format = 1
tile_data = PoolIntArray( 458763, 2, 0, 458764, 2, 131073, 458765, 2, 131073, 458766, 2, 65537, 458769, 2, 1, 458770, 2, 131073, 458771, 2, 131073, 458772, 2, 2, 524299, 2, 65536, 524308, 2, 65538, 589835, 2, 65536, 589844, 2, 65538, 655371, 2, 65536, 655380, 2, 65538, 720907, 2, 65536, 720916, 2, 65538, 786443, 2, 65536, 786452, 2, 65538, 851979, 2, 131072, 851980, 2, 131073, 851981, 2, 131073, 851982, 2, 131073, 851983, 2, 131073, 851984, 2, 131073, 851985, 2, 131073, 851986, 2, 131073, 851987, 2, 131073, 851988, 2, 131074 )

[node name="Sprites" type="Sprite" parent="."]
position = Vector2( 224, 160 )
script = ExtResource( 2 )

[node name="Player" parent="Sprites" instance=ExtResource( 3 )]
script = ExtResource( 4 )

[node name="Co-ordinates" type="Label" parent="Sprites/Player"]
margin_left = -240.0
margin_top = -160.0
margin_right = -200.0
margin_bottom = -146.0
script = ExtResource( 5 )

[node name="Camera2D" type="Camera2D" parent="Sprites/Player"]
offset = Vector2( 8, 8 )
current = true
drag_margin_h_enabled = false
drag_margin_v_enabled = false

[node name="TestSprite" type="Sprite" parent="Sprites"]
position = Vector2( -32, 0 )
texture = ExtResource( 6 )
offset = Vector2( 8, 0 )
vframes = 4
hframes = 3

[node name="StaticBody2D" type="StaticBody2D" parent="Sprites/TestSprite"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Sprites/TestSprite/StaticBody2D"]
position = Vector2( 8.58325, 8.51172 )
shape = SubResource( 11 )
[remap]

path="res://Label.gdc"
[remap]

path="res://Player.gdc"
               [remap]

path="res://Sprites.gdc"
              �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         CV     application/run/main_scene          res://interactiveCV.tscn   application/config/icon         res://icon.png     display/window/size/width            display/window/size/height         !   display/window/size/always_on_top            display/window/stretch/mode         viewport   display/window/stretch/aspect         keep	   global/2d          #   rendering/quality/2d/use_pixel_snap         )   rendering/environment/default_environment          res://default_env.tres                 GDPC