GDPC                                                                                H   res://.import/Campfire-Sheet.png-3655eea0918d291c2a2ad3771cc97078.stex  �W            �}q�����%*ܳL$P   res://.import/Noivinha_pulando-Sheet.png-583cd921c596f76d9b5b0d7a7e271bf5.stex  �@      �      }�0���	��hb��H   res://.import/Noivinhha-Sheet.png-21cd8d615c0cf59e4a8e6c7b0cd05f85.stex �F      "      tL�>#K�wo�3HsϫH   res://.import/Noivinho-Sheet.png-f7bec15dadcac30f9cda9a72d134cd28.stex  �L      �      � Ή_%Ug=�O�xP   res://.import/Noivinho_pulando-Sheet.png-97cda7bec3a22d29c603716110444a9b.stex   R      �      Ð9N�xѝ�D�Ԯ�FD   res://.import/Pacoca-Sheet.png-7372cfc6f3107828e01924d0505eb6bd.stexp^      �      ٣�S���p&%��sD   res://.import/Snake-Sheet.png-02f874e0fee804b05c120a7e1a5c26da.stex �c      z      ���0��/U�^�h�WD   res://.import/background.png-96087bb01c095a70303c14810a86f1ff.stex  �h      {M      �c�ˍD;5���l� <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      U      -��`�0��x�5�[   res://Main.gd.remap �             �(@Er�#��K�F�[   res://Main.gdc  �	      >      ��d��8�=��^���   res://Main.tscn �
      N      �W����.z24l�xk��$   res://ParallaxBackground.gd.remap   0�      -       8B$)��6���K�   res://ParallaxBackground.gdc@      �       -ie1,��ִ�SNF�5v   res://default_env.tres  @      �       um�`�N��<*ỳ�8   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import   P!      �      "�Պ����$��㹌   res://player/Player.gd.remap`�      (       ����]{�ZNJD��l�   res://player/Player.gdc  $      �	      �������Z�����   res://player/Player.tscn .      �      |�������\���h   res://project.binary��      �      ]ij�j��?��dto?�@   res://sprites/players_sprites/Noivinha_pulando-Sheet.png.import �C      �      *[	�r���Z���ꌪ8   res://sprites/players_sprites/Noivinhha-Sheet.png.import�I      �       ��^�鰑�L��*8   res://sprites/players_sprites/Noivinho-Sheet.png.import @O      �      I��q�gu0@   res://sprites/players_sprites/Noivinho_pulando-Sheet.png.import �T      �      w���
��p[z�S8S0   res://sprites/sprites/Campfire-Sheet.png.import �[      �      �h��
<�j�����0   res://sprites/sprites/Pacoca-Sheet.png.import    a      �      cS��!�ܪ��Q���,   res://sprites/sprites/Snake-Sheet.png.import0f      �      �j޶M�0(�kv,   res://sprites/sprites/background.png.import `�      �      7|5Zpԥ���H�/a�        GDSC             ,      ���ӄ�   �����϶�   ���������ć�������Ҷ   �����Ķ�   ���ƶ���   ���������Ą�������Ҷ   �����Ą�                         
                           	      
               #      *      3YYY0�  PQV�  -YYY0�  PQV�  W�  T�  PQYYY0�  PQV�  W�  T�  PQY`  [gd_scene load_steps=6 format=2]

[ext_resource path="res://player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Main.gd" type="Script" id=2]
[ext_resource path="res://sprites/sprites/background.png" type="Texture" id=3]
[ext_resource path="res://ParallaxBackground.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 529.161, 10 )

[node name="Main" type="Node2D"]
script = ExtResource( 2 )

[node name="StaticBody2D" type="StaticBody2D" parent="."]
position = Vector2( 0, 124 )
scale = Vector2( 22.32, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( 7, 0 )
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D"]
margin_left = -521.0
margin_top = -10.0
margin_right = 536.0
margin_bottom = 10.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 40, 94 )

[node name="Camera2D" type="Camera2D" parent="Player"]
position = Vector2( -40, -94 )
anchor_mode = 0
process_mode = 0
limit_top = -120

[node name="Player2" parent="." instance=ExtResource( 1 )]
position = Vector2( 40, 154 )
scale = Vector2( 1, -1 )
UP = Vector2( 0, 1 )
Player = 1

[node name="GUI" type="Control" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ParallaxBackground" type="ParallaxBackground" parent="."]
scroll_ignore_camera_zoom = true
script = ExtResource( 4 )
speed = 300.0

[node name="ParallaxLayer" type="ParallaxLayer" parent="ParallaxBackground"]
motion_scale = Vector2( 0.1, 0.1 )
motion_mirroring = Vector2( 512, 0 )

[node name="TextureRect" type="TextureRect" parent="ParallaxBackground/ParallaxLayer"]
anchor_right = 1.0
anchor_bottom = 1.0
texture = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": true
}
  GDSC                  �����������������Ҷ�   ����Ҷ��   �������Ŷ���   ����׶��   ������������¶��   ζ��   d                                                    3YY8P�  Q;�  YY0�  P�  QV�  �  T�  �  �  �  Y`       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

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
              GDSC         Z        ������������τ�   �����ض�   ���涶��   �������   �����Ŷ�   ����򶶶   �������   �涶   ����������   �����Ķ�   �����϶�   �������Ӷ���   ���������������Ŷ���   ����׶��   ���ƶ���   �����Ķ�   �������������Ӷ�   ������������϶��   ����������Ŷ   ����������Ķ   ϶��   ������������Ѷ��   ����¶��   ����������������Ҷ��   ���Ӷ���   ζ��   ���۶���   ���϶���   ���ۄ���          �     
            ,        Player1       Player2    
   idle_frame        jump      jump2         ui_left       right         ui_right      left            walking                                                      	   %   
   1      6      A      B      C      I      R      S      T      [      _      c      j      n      r      s      t      z      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3   "  4   (  5   5  6   9  7   E  8   K  9   V  :   \  ;   ]  <   c  =   g  >   x  ?     @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W     X   	  Y     Z   3YY;�  �  PRQYY>N�  R�  OY;�  �  YY:�  �  Y:�  �  Y8;�  �  PR�  QY:�  �  Y8P�  R�  R�  Q;�	  YYY0�
  PQV�  AP�  PQR�  QYYY0�  P�  QV�  �  PQ�  �  PQ�  �  P�  R�  Q�  �  PQ�  �  PQ�  �  Y0�  PQV�  &�  �  PR�  QV�  &�  PQ�  T�  V�  �  T�  �  '�  PQV�  �  T�  �  �  (V�  �  T�  �  �  '�  �  PR�  QV�  &�  PQ�  T�  	V�  �  T�  �  '�  PQV�  �  T�  �  �  (V�  �  T�  �  �  �  Y0�  PQV�  &�	  V�  &�  T�  P�  Q�  PQV�  �  �  �  &�  �  PR�  QV�  �  T�  �  �  '�  �  PR�  QV�  �  T�  �  �  &�	  �  V�  &�  T�  P�	  Q�  PQV�  �  �  �  &�  �  PR�  QV�  �  T�  �  �  '�  �  PR�  QV�  �  T�  �  YY0�  PQV�  �  �  �  &�  T�  P�
  Q�  T�  P�  QV�  �  T�  �  �  '�  T�  P�  Q�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  YYY0�  PQV�  �  T�  YY0�  PQV�  &�  PQV�  �  �  �  '�  T�  	�  V�  �  �  �  �  &�	  V�  &�  �  V�  W�  T�  P�  Q�  '�  �  V�  W�  T�  P�  Q�  �  '�	  �  V�  &�  �  V�  W�  T�  P�  Q�  '�  �  V�  W�  T�  P�  QY`       [gd_scene load_steps=11 format=2]

[ext_resource path="res://player/Player.gd" type="Script" id=1]
[ext_resource path="res://sprites/players_sprites/Noivinho-Sheet.png" type="Texture" id=2]
[ext_resource path="res://sprites/players_sprites/Noivinho_pulando-Sheet.png" type="Texture" id=3]
[ext_resource path="res://sprites/players_sprites/Noivinha_pulando-Sheet.png" type="Texture" id=4]
[ext_resource path="res://sprites/players_sprites/Noivinhha-Sheet.png" type="Texture" id=5]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 5.38421, 14.0719 )

[sub_resource type="Animation" id=2]
resource_name = "jump"
length = 0.8
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:hframes")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 2 ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("sprite:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.4 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ 0, 1 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("sprite:texture")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 3 ) ]
}

[sub_resource type="Animation" id=3]
resource_name = "walking"
length = 0.8
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:hframes")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 4 ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("sprite:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.2, 0.4, 0.6 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("sprite:texture")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 2 ) ]
}

[sub_resource type="Animation" id=4]
resource_name = "jump"
length = 0.8
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:hframes")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 2 ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("sprite:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.4 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ 0, 1 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("sprite:texture")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 4 ) ]
}

[sub_resource type="Animation" id=5]
resource_name = "walking"
length = 0.8
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:hframes")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 4 ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("sprite:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.2, 0.4, 0.6 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("sprite:texture")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 5 ) ]
}

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="shape" type="CollisionShape2D" parent="."]
position = Vector2( -1, 2 )
shape = SubResource( 1 )

[node name="sprite" type="Sprite" parent="."]
texture = ExtResource( 4 )
hframes = 2

[node name="anim" type="AnimationPlayer" parent="."]
anims/jump = SubResource( 2 )
anims/walking = SubResource( 3 )

[node name="anim2" type="AnimationPlayer" parent="."]
anims/jump = SubResource( 4 )
anims/walking = SubResource( 5 )
              GDST@   &            �  PNG �PNG

   IHDR   @   &   tĝ�   sRGB ���  GIDATh���Q1@�LZ��9� %�G*�Fzؔ@h�{R�C�Ļ�eْ�3�f8�ث'i%�
BD�)� ������I�/�mn�y���'�Q�&�����h�l�^��Zx�x��,)gmtk�p��a�ڪ5��U�$�}�.֕�]JJ�iGP�	k��­2�����0���J�
L��6��	���C�� H�%4~.�v����?��}�����~N�H��XA���_f@s��d8?�rpM�=V�Q|u	����o  ������H/>.�"h�~�g���|��P���Ωq������"p�)���8���D���g��CĦ��'�ey���]䷰�3�G�Z���VX}o��&W��NGc� n��X�7+�e[� '`�.8ND^AP;��3�͗�#�k,�q"�� �����lȂ80�c�K�:~: '�!E�k��fDt�B	d%��	Olax�M��h�K@ډ/Ϟ5���R�k�(�n:4��f4vH���B<ˉ�m�G+��p{x�`u��s��n/�K�`�8�Pc`o�ݞ��Ra\��unB� h��g�j�Aa�/Õ�[�ߓ��p�5G@�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Noivinha_pulando-Sheet.png-583cd921c596f76d9b5b0d7a7e271bf5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/players_sprites/Noivinha_pulando-Sheet.png"
dest_files=[ "res://.import/Noivinha_pulando-Sheet.png-583cd921c596f76d9b5b0d7a7e271bf5.stex" ]

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
detect_3d=false
svg/scale=1.0
              GDST�                  PNG �PNG

   IHDR   �       �"p%   sRGB ���  �IDATx���q�0E�� ����C���S�ޒ���C��%Ї�98�!��
�fv�g<[4�'�� dB�},"6}�����p��,VK�?�[U·�>l�C�'<Ol�渌���y�vծ�,�GE�"|%�tV1���?m�������O��/� {�{e�A�\�����K�.�{��g�}ӟ��7`����[�������0��Z&�,-%5�%�ra�?�_�� i���|>4g��� ?�(�k�Ocl�q������  ~���ke�~|dۑ О}���l��?�O�% ���7@�c��|!�k}�%��+������`�� �����94�x�k|e>@�"��&�9M���}�~*L<�+��IK?���I��	�g����/�*"8"j߬0�|J�*�&x�j~'5������ E�s.�G��Y�j����������ރs.z���?� �^Gh�����7��5M����L'��l���F�D�rUR��ʩ<x�g�}���u�GK�K���(�Hإ���C�?���+Qa%�p%W�2?z Ѵϧ����xT��uj�d  ����=�ޟD'ܜx�%/��D�9��}g�ci�c@}����1�J� 0?�4 �T'!�Õ�������^x��6�*��M}��4Z�	  ��6?1��Ƿ�	�&u��� /#����8Y?_�de-g    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Noivinhha-Sheet.png-21cd8d615c0cf59e4a8e6c7b0cd05f85.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/players_sprites/Noivinhha-Sheet.png"
dest_files=[ "res://.import/Noivinhha-Sheet.png-21cd8d615c0cf59e4a8e6c7b0cd05f85.stex" ]

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
detect_3d=false
svg/scale=1.0
   GDST�                �  PNG �PNG

   IHDR   �       �"p%   sRGB ���  9IDATx�횻m�0�%.�F
�r�*4�P�d�<@h���B�ދ�H��=�M����I&�;��#) �H׫H��lOU�wė���G9cɓ��ǿQ��W�k h��F����?-ґ7���@|�~`��i�)hbK�<�=��(����
x}?�K""����"C��ۛq���]�;��j�<O�ğu���@��D�eD||�6P�}O�M?_/ ~�<o"�5S� ���Ww�|W;C|�|� X�U7�������,8�ru(B|����"���ع@E����R���vdf�ai�C|�|�ID�O|�|�Js�
��<�;�V��?�5�3@���j}'��om#�8b��0����&�\ ���.�^������^4Zf������5i?e�+��.�y��
6��$�_\����)��c5xx(�c�z��#L:���c�S{�'Z6����Xᴭ����~�kFE�P�	J�Fے�� ����O9�G�H�D�>�|�f �I�y�^�I��B�'��W� �FmF�H���c{d��'�~����$}�[:ﺖ�    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Noivinho-Sheet.png-f7bec15dadcac30f9cda9a72d134cd28.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/players_sprites/Noivinho-Sheet.png"
dest_files=[ "res://.import/Noivinho-Sheet.png-f7bec15dadcac30f9cda9a72d134cd28.stex" ]

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
detect_3d=false
svg/scale=1.0
      GDST@   "            n  PNG �PNG

   IHDR   @   "   �Uߏ   sRGB ���  $IDATh��YKN�0}�.��t��.z�^�� ����8 H� G���a�v�8Nf&�c�xR�|�y�ϞI�*�a�� �Y������p� Q��b�b> ۖ;[d姜b;�#�J��� �� t]�K�~��Cl�s�����cF��59H�f���V��yl�9X�>>E��"h4��&�@]o8�)d��<����UT����q~2$�[ >>��㧫}l�����]F�(�?��[~���ȵ)J�O٧T0v椡+@W2r��w���h��$z���ק���"g"��%�0's� s�!L͗�~;�!�	W=���k�����L��RS%����k��$b�c1�A� �
K��F��L p.v�&�j��9��iV�)���e��Ӻ:�O1#=�z]x9�r0���Ǘ�1q����=���o�l��z�:�F�gh�8�����Ld�c|<����  �/+4�;C�deۂ�<����|�Վ	�4��Dܧ�j�i�4���A��>�7CE6[����J��B�"�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Noivinho_pulando-Sheet.png-97cda7bec3a22d29c603716110444a9b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/players_sprites/Noivinho_pulando-Sheet.png"
dest_files=[ "res://.import/Noivinho_pulando-Sheet.png-97cda7bec3a22d29c603716110444a9b.stex" ]

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
detect_3d=false
svg/scale=1.0
              GDST�               �  PNG �PNG

   IHDR   �       �"p%   sRGB ���  �IDATx��[�u�0���  .ܥT�&�F�n��\&����<�7)]�sq�CWX�(
 ��b}����!?��!A�,@��W���>��!�o ׎���8��5&����� ��d�,�A;C�\5̧�o��H���@�M�j��j��9*���ɂ�%O)�]p8��5��5TS@���`�����7�'%�T�)�p�xe�2��*��h�E��)1�T����r�p�������أ��-����u�(i��vu�$w���S��?����Nr�Bh �� ��s��}��\�y�~J/b8���@�B0��Z��ĉ��_,	���\6� � ~-�pn�?j��e�]�/̨)1pI�S�J$��t	e���U�A� fA>��'�0�K����� ��Bx϶�9Lw?�\�cӋ�ʑ�M@��!��Rtp8댏���0p<T�f=�}|�'�Ph֗t�B$�o����Z���G�^��A}Nwh�]�<�QC0/X�zj��e|_�#���X�Q��`�!��}��ꟁ���}�ǧZ���F�˝C4�k��A,�3Y���8!��Q�2�u�
ګ�	�镒���!���ԫ��"A��F�IJ�Q1R�Y:'���
 Z�O�T_�g]M�ʋ u&nZ*�?� u�x������4��甌��+�6����8���	����]��1"~ �j{B���O�.��A�C�2���gg��^>�1���c��A�a��@�sQ'�� ��Ɂ�b���A�ͨ�Y����������
!�Cgwc ��s�"��༣=n�����':��k��pϵy�r�?���Ig�_�N�q�w��#����s-q���})~6D�`��{)�o�/X̢��} A�Q�`េ��"�jY���g�hF}��r����?�1Ěk�Ə    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Campfire-Sheet.png-3655eea0918d291c2a2ad3771cc97078.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/sprites/Campfire-Sheet.png"
dest_files=[ "res://.import/Campfire-Sheet.png-3655eea0918d291c2a2ad3771cc97078.stex" ]

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
  GDST�               l  PNG �PNG

   IHDR   �       D�w�   sRGB ���  "IDATx��1R�0EÁ�>mn�1� pn�&}|#(2<I�]�ve�&��}�^IQ�   ��S��md_?�׶���kg�52H�������Y_�~@��A��y!��W����B$4���nJ�V�-o�g��2P \O��i���r����t��m+w�#�4�u��ޜ�*��[�{ٿ�#T�K�����!kٺ -���ޒk�ި�v���>xvB�o���o�-��g ��U �s>��x�z�[�j�e���{X�^^��z�݃Mo~K�Zg)��K`�6h\�֣����ۻ�5~vXN���ﾑ���z�����7�x	��6�`��͑�k�������6�`��͑�k����U�y�L  �] �M��~<���~����S~�P�_}�z��ߋ;�����84q��i0��>����~�a�tS:��I�o1{��.ko�������O.���r�N�������M?� 8���v(�b�K�kK�EX72�g�n���Z -kJxe�l{37�A�Р �Р     0 �&��\�L    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Pacoca-Sheet.png-7372cfc6f3107828e01924d0505eb6bd.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/sprites/Pacoca-Sheet.png"
dest_files=[ "res://.import/Pacoca-Sheet.png-7372cfc6f3107828e01924d0505eb6bd.stex" ]

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
        GDST�               ^  PNG �PNG

   IHDR   �       �"p%   sRGB ���  IDATx��1r� E�2)��.nS�L�#�O��>@R�����J��]ܤ#E���E��A�f\X�����0�0�0�0�0�0�0S&���9�4��?gH����BS7�{Jb�Mf�2~�	m���� �u7w_Lr�����,�U��y��{��? �v	'�_��5�&�Um����6����j���{�7ًj@&�O�����d���v�~2�q@ ���k���:@.ru����'G�1u ��1�j0%y���u�����/���H�?��4lJԤ;�	�׏�2��v�d�oP/�
ar�^��@�����&F_ś^�����åP���=��8ތ�����wM��*�%t��bch���<u$�?9�] ��p>vx��
ү�3��[�W}G>:��w�w}G P�B ����~���B~7C�GА���$`	�#��4�L)b���y��E���=����O��H�^8�	#(�T:ͻ�O��H�ޭ��`J�$j�=���O��8�!�X��>���Si(��/?�шk��2    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Snake-Sheet.png-02f874e0fee804b05c120a7e1a5c26da.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/sprites/Snake-Sheet.png"
dest_files=[ "res://.import/Snake-Sheet.png-02f874e0fee804b05c120a7e1a5c26da.stex" ]

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
           GDST   �           _M  PNG �PNG

   IHDR      �   �&^�   sRGB ���    IDATx��K�dٙ��;�>��ʪ��*rH�=���#�h!�gCj� o���2䝷^X0셷�i��i+@�c1M��cB��ᴆM6��땑������FdFfEfFdFdDd|? �+3n�s�������{AA�(��+ � L�Zv������W~~���L{�}��/~���OG�-�z���?��+?�Sp�2���u�O<��/��2D�p�D�6H���j� +�XG���xA���Y�ц��7Gb �4HAց�����O_�N��yz� a5FG��I��}�}�/{.���X"�:�Y�/Lf�n���/2�7���x&㿎}�U��v$ Aa-Y�����������ͺ*�uT�ױ�gq� c�v,�8?���t�s�i��x �_�y�Wl��8G�3����;"�p����� \T�Vt���&��i��]+�M�� 7�6_�g�G��\g�>�=����)�хL�ƟtQ�^�:	�Q��5ru<¬,�.nvas�h����o��(���}�/���:�
��� �i][���k����_AXu��N��Kd9�X��ٛ���X0K���Z�4�usM�z�ra��{��̳�]�*��a��Y.f]��U��U�,q�\Ӥ��1#��p��坘�ؑ�_�~D��i����iX� ]��]KdՍܹ����hc$��8O��r��Um~|�?�~d�;�	�u�3Ͼs�s�|�u�s���+����8��fD�DaLj�j쳣������V�����3Xt�������c��F�O��CM;?�
�"���;$H� ������	��U���~�I߷���&^�u,}
`���i�WC�]��tQ.��/�e����BYQ�g?�|���q5ށ�`�`��>�����7���,}�`Q�C���Fe���L�jL�]�|晆r_��:�M��6��x�S��`ܘ]�Xl����k��Y��4����{1p_����&��M��p��v�~"�j]��Ή�{2r_�g�S ��۪�y7����RO�su��(pA��iӵޔI��$��\Y�!����rэq1��x�uU�����xF��8�/�����\�"���p9Sx �V�7.f����L��,
�܄˘4�}��uk?��O��8����%b��G< ­��� Vn�sO�W���uE�h��Db �s��j�eJ+e��^a5���aD l�ƛ��4�c��r�]�	�nm03��%^b�Mw�^8��Y���֜�K7����j'��[�0Ʀ7�˂/����x_�㿙�+{:�>MǦ���d4$�g.�׵�o�w��.1��#�	HC�Xd����X.����Y��]�i����i�W�]���Q������-���o���#�� ː�7�����)���� l��@8e��o�������" ��6�Qgx�� i��}B����������������i��������e��=" Ɛ�Q1Ϲ�M��V٭6�n7��.����W����Y0%�֙Is�Y�X ��.c]<Y�&�?��O�]���?��������E�(Wq��_�fW�u��G�׷�I�_��dd
�&5�MT����o������e������?��߷��Ub�Q��<p"�9����.nQL#m�����X��!�vD \�� a��M[]�v.#|�"b�o������ Lb���*���"b�o��)��1�V�y��Ul�#�� ��E���e�s����O-l*�e���(�2�(N�I<#�2XX�Y���@r l6��o>���H#։ۨ�U��Ƒ~�f� ��۽pG�r��L��,�-ދ�-��-� 7�^� 	[�̝ܗ���y�qʹ�p���|p���|T�"۟�ma���?�
`A�Z�ԴH�Xon��"@X&">�x ĺ6X1���]��um���"mnq� �{�"D�CA���wA��Tx�懺�Q��o�./�b'�Q^F)̄������6k9YcG�+�t�3l
�ǯ�M���O��2&]��a���?Z��w�ޟ-���0m�e���ۨ��I�E�N��D�B�ُ.7h�|�c�O~|��[��?��	?�1��ѽbbdW�޵m�ł ��?������ܺ��#�v٠�_��G���OϮy� ���n�u7�����K?��	�'��am���/\5��Q���-C(\�N4�����:��~t� ��O|���J \G�ɧ��Ӌ ��'Τ��~�#�_������h��g?��Ϯ,S�� ��1������χ����̠^6ڞv�x��(�9�d?��T!��'��ɧ���q* F��j:P�����O�W� 1�� �E�O>�Oԏ�gޟ
�?�d
��x_�e�$2��	b��m�8���t�|�RW�oa������{����*��5�AV����2g;|�)�73�W���p���T%Os��J,����?.f1��'�|� A�5f����ܬߟ4蜆���`��E����]=�r��Y����E� Lbu�'q��|�����L#n����z�,u\5,B����T�M�'71��|W�;b�mΆ��������D��^���"`�4��Y��e����3|i�"�6��ܹfӖy�q"�Ubu��;`�/^��ˌ��y؄���ӈ���?�ʎ]���x���%_��W}67=�]����#���� X.g����cn+����k=�����w�Wa-�����څ��~~�k\��W��]�*	� L���p����l�+X%A��ɰ�p��� A�'��92�SD �0g���`ň	k� A��U�~[��}u�}C� +Í��²��7�{� AV��	�~)�X���f� Ar+ρ���5c�	C$��9�g?\v6�����uB< �Aᖈ@�7t��-�
��ǰ���l�U�ŭ����]?��� ��ߞ���� X�{(�p?���^�~@A�[#@A6 ��	FA�e!@X"2�(��,�& ֭�_��
� �U,M ���w��+�pgH�����S�w��F�	�q�.R�[�Ab Aa�T�½d��YF��}�ct�_<��������s�q�n[�x<���e��x� � ,1�+G�����p/�_�]v��j�����F#@ﯯ�R��/������\�޻�W�?�Gw���C��|���j�y��� �p=" �1��'�A� �� "Ha~� A�D� � l " Aa � �d6����i��{v�u�Ӕ7��nS֝O��7˳�My�,�>��y>��  A�b�7� ���Yo�H������@< � ���� AX"� , � Kd3��7�*� � ?�*"@A6 � ���� A�D� �p%2�? � \����OD � �"@A6 � ���Ȯ�� ����@A6�%o<iq�8$A���jټ; ��T@&�Aα<Q�4�y; ac�G-��2�.P����+� ��$+x��@�� ��Ia�U � �1�ӳ|ϯ  " �5F�Qa-�$��A�D< ��A\� S#`i���;��A� KC�� \��da�Y�; 1 � ����`�q��zH����x Aa� �8'���� ��I܇]|�wƽ�������A�D< � ���,a;`A�� �Du¨~���Y�-�6�,��B�e�Q�@5t�up�3Sf�2ÚlI���XX�����3��N����x5���2�ey���yBs�)��' ��g��\�Y���d��?�@˪����Er�I�t��v��� �����B�(l��@���I��t5��C����v9M��7���I:�I��H��؉�ӟy0�3#K��P�����\��NN�q�S���7��3ﺾx�$�L >�>�W?�|�{��\˽k����>݁�-�A7��0ez��:A�8w\��k����l�]��t������|�?�;�;{E֌�_� �G�k������Os��w�����ޠv��O�������Ox���/_���~��oQk�;Ζ��Q�m,X ��o��ዟV?/
��f�g�&�[����N6g^u���"o޼YD]G����>��ڿ���zn) F�ߔW�P��[ s�N�x�x�o�)���<ؙ�`ArQ0���wz '�<�y�-<�=ۏ�<Wx�h\y�P1��I���e��(�y���6gH��r�Q�0jP���Zg��֤���j��¨Mmou��2ݤ�ܧ������%�Nn� a��Z[A��G�
� �"@A6 ��Sˮ���O�a6��#}�� � ��92��� sCqos���/" �Ls�ɲ� �pu��2@A�%3i���څF�t^I���p��:�1��(1��\��^�(�}�@kE�qDZe�<��g�y��*�kD Wrˬ�K�K���>��$��>�����q�v����[[�xz�>��>�~f�`����Y���,���:!@��EI���/�|E���u��/_�<=�ٳgXk)�,�h�B�<�'���Z<}�Q����_���/^^����� wx��tz~��5����z�~m��`���,�~Ȥ��xD �c,�AB��GgP�������f��`���IJ�ݦ��$�fc��e���7=�={�����;�ŋ�|��d�9�n"#O@��{����7�OUHi�)���zp�>��;:��`���N������g�pAXED W��c�<Ea�N����ǿ�=���o������z�lw�v���N^�i�Z�!aܨ�gϞ������}��������'������������y_�(g���ǯF�Q�j����|��?�������,E)���	_|����gXSM���:�g��"@��ĵ������o�������j��F�L �zU�{�5�#�V�A��X <����������_�|	e����콭g�3��㷏�Sݫ_�L �k1[��;��>x��������Ypn�� �}[m/�~��މ��<AX7D �� h4������c�>}J4��s���j��y�(�&�'�s��~��o�j����?�.?�˟��h	�&
+@���jqpp�ӧO�M7$I���t����f��w3�'��z�n�0F��$�_�`���~:���|�ո��5��l�����&��|p��x�y_�ۿ?_({�,�5Zi�^�Nt��|�X�k�Z���ƍ��j�:�gݰ���
ӳVS ���U�V
���ۜ�yOa-�sX �PJ�T�B�ZM��Ih�	�F)0�!M��9_`���gϞ-��Ua�� I��vaJ�R���BD�0J)��S���@���A�^�~�9�l��7&.�u�U&\䖊�q|��M��薎��c6�72����G�4��|N�=ݲ�_����GU���{����(�u���/J:��4�(K�,���ׯ_g����z��v�͠? ��4���� ��6�Hs����C�;�;�>7r�N��<Y�{�bV��N�^?!M3�[�v���2Kcȋ�</����ӀO8 LӔׯ_s|rL�e��!�K�4c�h�8T�9�}�R(�T�GQZK�,�%�L@)�B�������}���Ω/ؔ���΋��P/�y�{����q������8�Q���ޓ�QQ�9�W� �z�8�{��;�2�p>���wGu��,�|��_����믉�/cV�-|��-E�c;&����f��n��/�,w/^T��.;VN��W�ܝ�`)���j^�bV��Q�Wo�h���6���?�O��O�-σj��/N�-L��K��)�n���|����9��S���(8:�����1� ���I�f���=�X,��|�w�"@�X�ɜ�(PJ�)��~|�Ji}*���M< �	L ���7%���ɲ�0����p<��UT
0����p�S8Ǡ,I����%����G@���eɛ�c޼;�3 /-�^��2Oh���a5�uҩ�GI`N��Dz�E0c��7��n$��%?��O�e�O6srܦ��%��[��`�8g�>���2}��ͻ�	ǝ>�AJ�����g�߽��lpt�;��YҤ3q5mV���Py ʢ �������kH	�v�~�S���p����E�~�ћps��8gp��Ea=$�p�e����i�4�3�c��3�+f	���t��/�����X��{�w�����5�q�~�
5�����;��^U�p�U� O���H ̂�`���P8���ȹ�{�a��@����V�FÁ�Mtߑ'�i@�H Xk��n�4j!ۭ��}�%�);���s:��~sr������{93���j��IV��Ns���̃0�j5h�k� ��;1�ߍ�ӳ���K�t}9ۭ�[��y��U��9�1%����ޤو������`&�wC`��N)2�B�#�A�ո�w~h����VM5H����:�s�R[r[;8�����4���zꑪw����!���=�����oT�� �trUG�S��p� �YL���L��l����,���_�P�u���}�0 �b?ܣ^�)�g�85���خ�?�m��ݚ�8�g��)�2�[�[	��A��Xgƾ' �3��߹	�!n��lo5�6湂�L�50m��0��n�[ϟp�`gb�APy���6Ĺ�m�����&�F� ����ǃ�����ݫ � 5�Q��km��g� >\�N���.�:��y�u�*3�f�����4�=f�m�w�����N0���Q ܔ����uԠ�F{�4o�E����9g�eJ6h���a��ƍQ�#C�!{�-�u\�3��~1 �:.f�1�R�Y�|�C�hn*t�0`k�A�<2�3�ؽ�IӔ��GdJAh�(�^���	n�R� ��M�[����z�S����vժ���0x�x��.^. �m�w���?\X��n?�=�ꜷՍ�����;{z왫d>"���"=�w�% i��%h}��߹ڵ��"���rg�yx!�-�&eZ��Nc�)�2 ��BZ�H��w�b�^��-�4AԠ����G���$n�����S{14*ԙ����W˾u%FNE��4�Y�`;|��r�K�*i�>��0輺�3����;�Z�?Tr��C��i�u�\] `MF�@�S��5 ����ZS��lΨ�2/�p5�-��>3� �[l?�&�O���#��>�󏂶��Ñ�ȆM�9VgL�9~x:_憐������d!'V��v�Nx�9��?oЧP gn��7@����ڔ ����J�AĪ�-��:$�č=[�h�<!��# F��3[�Ό��ݺ:/ �v`Vkp���/�F+��u,C� �t8����b`����=s; @��a4t���AXJ�u�#��Nՙ�����3[#;0�K�L��m�MX�T��p��S	8Aac��o��X�	kA���� ̓�m[�d��yso= ��1��e�TK�$ L��W��-3�dH��b�؆�u|d�E�s���K8:�a�#��oڷ q��~2��7AkEG�qH.�.��(EQδ�x<�[M�a���0� (KC�7��K(
3L(v�H%̗ �}�K�Hx���A�V+�����䖾�#��я��ZgYq���m��m��=����b��?�ݡ7p�X<��#@X[��5��IR�m�$���ȯ�/"MzW~~��0eFc�Z>��%Z�9�-h����������7H��C~���ܣ�xnKjgE3���6aT'��R�F���s$iI��HL���E�e�/a� �-AQk���}N�ҧNa�kWd&���$+k��?��-S�䄚곿��M���Mɲ������e�~�Zs�`IˈU§���t{�\J�ܺ�s��2�F���sj�=�@�H��E���Q��N�8���[X���ý���    IDAT/���7�:�j۰�	�<9�l����K��c�K��z�;��E�����b�D�1���؊ D�@��Jx�<���A�� a�v�:��5��:v���b�����èNY����7������6:\��aL�Y�~�-<�=ۏ^��T�A��u���6�k�1Jo��� ��::�o]� , �d��3�Z�QeSӥ͜�5�5��;c��-�Zg�2j����uT�ԩ5�il?�2������u�$3|��b����n��\V ½�i3oj��,�*_�|��ʧF_n.녻D2n��� �3����!�~=X[��f?��l��*!wBX+fB��?�
�V ��vp�n�+�c�8/R%Ei��[�������(�Ȝw�l��.r:8<�������;�(�&7����ҕ�>�T׫��
����H�˘ĩ �
����(l�bfI Rw�5�{.+��8gp�T�T��ÙE�<�p��΃�(ɋr������wk���S�kV��W�.�wg޻���0i�Y���ƕ�ϼ���t���:����ahׂs6�9�59x��*���9gq��X�K�Ei����9[-_�A�c�9�%�س1@U�59ޖ�A��l_��cޖ�M"��6��{%{��U�J��SG�:[P�ʼ��a�$�[�ǔ�L��1Q�$��P=�W�=�:��U�f�BNo��[�M527M�;:QJ�0ː)�;�-0yg3�RQ� j1~ԟ{���t ��c}���5��"��:@�hh�թ6E���C��14��YL>����F՚��Z��:[��]�)��[� �N����X��R�Q� �ᜡ̻�� �"�m7�P������������4�a�.q_�F5��qy[��tm����m���s��cM�u��G;�����H����_AQk>�����(y��Jkt��X�p��Z"v�
F�5�Yk
L����4a�$��� �r~�����'l2�]2�#���d���-OP8Tc��jtL5�+q&Ú�<*�+�@��2�9��l�RA؀��Vq5�t[f��1>�
Q�]Tk�P��ט��-�����W�9KY$$�C
��uH��GCk�
N�r��ɋc�v��.Q��3�,yG��T@�}@�	��2���Ą��*�>�ڟ	 ��e�M���kt��j[�<�G(ST҆�����'訆j���C�����;!��M�N��=��7h��J�lI�w��`��Z`)jձ��S��״�"�MBo�Dg��or|��MY�5�!�A8�px�3	e�Ɩ��Z?��-��2Ŗ)�{tp�H�Mb��-SL��,63_U���^~���VV�&"6�j�ڃ����K��>Cy��ý2� o:�b��
����h�Xӣ,�8��t�]-7V��"��wBx�&*j��A�k4�iB��5�q!� �m�����&���Q�WjtTG�{�M��!}�CB��Q��%)ߐm"�BGu�gxk0�6��oA}��p6��䐝��"Ύ��>?��	e�J��EBQ��1�y��m��a�?f�;�Wtj��x����6��"�A��"�;�q�KHuD&�a��2ʱ�Pw�2X�٨|h�)sT�G'=T�U��Z����=>����l�7m�yED< "�Gi,.�R�=����� ��8#�o��Y�a���-��h�]�P�$
D���Z�>L1*Ǹ�a39As��JWÛ'����x��>��6޿���:��c��Q>�v���ZV�w����(OJ���A�Nk��}C�v8�
)v�l�p6���>�qA��TFd F�4��R�Hj�H�w��5���2�S�i�'8_�L� ���|&G��A���(�z�< P�
LF�챕��Uh\q��(�A�#���R$&��b�v�l!���{*���9���Wt�������~�o)vN��{د28�z�����q��;u��T
:��]K%>TY��N��sB�$�ƴZ�����xmP>#
��5�Z�z�:�`�>�4xwBi�X��S�J*@�1�3ۡ �G:���ƙ )&�U`�V��V���n�����"!+�'��6�.H�}J�x���˝�~MP�5�#�j���QG�*��9�R+=��7����w�w�44{�#��P�B͉?�q�ق�0�	��:y�	�����F�#�p���!i���,�m���3 pM�*��ĕ):;&꿡�{�29���64��Q��y Ut`�,�.c��h����֖�c����le �����{���ӡ�M��K�w�ч�/��z��O)z]|}�������v��`�r�@��^���Ws�j8_OY���N���v�]Z��"ٶtK�zH��Š|N-�h���_���#/�ICC���֒�O�j(� @tlgKpV��V���w3*���F8"O6xW	�ذ���h���� O�~�e��a-���]�$D)ϠxB�s����x��WD�_��C�kbrpygj�4�L���-�y��i垏z�����4��v=��h�hJ�q�Pd=�	]z$�-�{M��}RoI҄z��at�Kl3���Q�:(T�a��:[��ė�2����FvH+o�MJ(�L�|m�0>�4J�aL-�h�������HP�:�����u���T��9�uY���5�گ8��{�;_0x�5f�߲��2ȿ�ȁc�<p>ݪ�E�Vv���	�O�Zq���L�J�n�z�Ã�O�)��B�KS���u��㌸V������{{��5E�<�n�Q���``r�2����EX&�a\*Cܸ�]�Y����j<���dT򌖳[��D��v��'DQ�$�2HZ���0�m�|��ȱ6��>^%��a�Q�a��hb�&e��+(��6��KV�IlJj-[9l;C�,>�de�	-�Qdy�2irD����}����S����ȜC�:.`u��W+1�	..at�F�b�7Ւ����8=d�8����nq�M�1Ȏ��}|�@�`��!�#����gK��P`фZU�(��۲ZߨtH�=֖�'u���/H�+
��)�DPF��+K�j���%A������<������iL�.Jt^B1����!K�Y��4F�Vށ~��CxܧuR��s<L��)�8RmI��\����8���JxtЦղ8�I8>	�
�ĒY詒F�"������y���v�� �h�y�N��0g���9�R�8.�j�4)�fLY(����E(U�ZCYde�<^u��[Tt��)�yl�)Ӝ<��*�B�0p)oÔ_5u��
���k��uñv�.vp�u�$m��>Ή�	 ���./(�A�fXrHAg��V�kJ5��gSLv�OQz�V�g����&��w����0. N��=���pڣU�úEa<�ᒹ�@�A�j�\��@i{��"�b�2���!��;[Zo@%>�d��^�%�h0@�lp�"ʼC�K�IA���
��u��>.S����>�y��G0�Sd9����Bk"��8tZv3T��t�!��	Δ�qT���Ё�k����Y�أ3�/K��V����~���C�Uu�ap�woV��5�~�0.Ǜ��y�T����1�v(���(˘$m2H�I�:YE�b���AGР�}�x�mS�������� �'�5�v4�6l�����4r��g輇��	���D�E9O�{�ҁɱ�xS��(lQ?y ���j��9�,�$'��De'&!�cS��#z�W��)���c�Q�kr\�`ʄԔ���؁G�(=�8�yObJ�"!O;�F�9��źK�
4�ކ��m�����O��J�i�k���,Jxg���+��1A`O
(;��"��Z����?Ζ��L�"T!�"i쉬���-��f�&sT-aг����vH�D�#�5i�ey�)�JNThl�U��lK�9P���n'�j �i���Գ���WF��(�E�C�l8=����%�u��8Go����2"Iwv8��OR�u�U8��* ��ɞQh�Aov����n�T�
�jx�6�1��S��*����c�!s9��(�ѵ&:���M�F�p>�l�qV:@+���4a٤�<B�����`�_X�^����'���EAa�W�*$P��fY�l�CE´��ZfW����?��)�8Jp�!���5�^�1�A�`��*c�iz����XP��o���O/��/XP�F� �����᭥��'5�:�e�i��2&P� �@(J+|��Q���f���$,�9r��E�N`8(��/�"M-n��6��Q�(K�I���wu��<����h���,9�I%Z�����!�po9�K+[��'G$�W8[�uTmg�S %��ɕ��Ml��ޠI�a�'�ؘ�h��;��]�r�6*h����T����ya�Z�QL��5��_oM��;J�1A������@���aFAK<$*5\��T�j���^9<�9�����}�.k�{X�c�)F%����~��X���u�#��:GӃu%]�d=��k|�M������JeXfؼ�q6``4]���x�u��C�<	���Ѧ� �,��hC�@��",��vw��`���j��ZUQ���o��p�sN��g�y�� �F��93�
�&釆,�9�Aݡ�k��R(Kxro)��
L	yZ稽}�h�U$iH���$y���)2C�}C�vp�$±���b�����.��ra��������и�XA�5�y�*��N/��	��� H�̯�}j��P�,R$�m�OD��ڂ&�a]㶱v�[8=E|�7
�#\W�c�ß��oE�4��i��X�X5L�S%���⭝xɪ��S�myvn�L�.��N��4�6Õ�+(5�zR��Shˉ�D�ɼbP�7x�wH����ߧ�xgP�$t�K��,g��y0�Pj�+-��0cQH����b�n���&���n2�3WJ7��iYNS;S��ǧc�Q��a�W���><W�4�U�ԀA��s�8&C��8�0F��<�S�%e�)��Af�6��q���U_*%�F�}�]����]��`}��p�%I���&6�`?[fd�6�(�Qm�ʘ7J��(�� T�!A�{e�^ JK� ��~�l���Ӂ�޹�����E��E�w_��a�F��UcU$=޻*��0�a4J���8<�J�˫�5�)�B����%��Ƞ,��:O�
̠�?y�
j���N#)�p� ��=��O�*�=U�A�
k� ����}���R����vZR�U�p�r�8W�lu3�+�1e�ݩ:��Dô�?\�h�@Q�u5�Wʏ�΁u9���li0e��N�"r;Uњ��#�IPX8͝'4w�r��E���N��fs�e�JzIB��x�)͝'3�A�a6��Է��f6�\�ERy�MN��u�0n�S�)*���hs�ICő�
���[lp�n$W�ĩ����:al���T�ӞZ_H��bh���[�|<��xpՠ������y�u�,�;�t������[!Z��y�:+�����ox�
���(�|�Q�����C��M����;�괵��=qsk��_ʘ�v�r���i�pv��g֔ßo:�g
¨�-���J	¼irs�)�;<m6��Ç<��x�$px��$9_� ,�"��!ᬩ����[�aT��=��١�Q;U�}���I�I���W �(��4�F�M�V(TF{�d�z����{p#Q1
~e��,ݻ��������0���gg>�+�r��	cE����C)���ں�V��or%
P_M�ぢL؀��0&�=E> nm�V�5��X��ѻ��8�P�V٢L^��jC$;�$�{���ۛ]F�v�����I��)L�'͈�?|��>���zxȫ$�������y����vE �%k�m�[����b�h�ۑ�]
+�H�u5x1�>8� h�K��Aª�x�A�V�[��5��_�=���sg!�����w�'[��x��=�+��x�~�ь��N[���9�P�^a��u2�q������ң�Z���3XUBC��d��P��S�Yo��~L\�!�k�&�k�;^`42?w���ox�l�ټ�T��$ᧇ����n�|CF���-�;O�>�-�����+��v���N��n��Y#������ƽ�� _ �������F�C7������6���'�������pZ�h6��;S4㕫]n@G#�qL��������a�=&/1i������}�1��?����Nӳ
�Mc�1�>����~��U��:In- ^'	���n���G�!�>���s�� \M\�a��(���Ϋ��������N��'���o5�a�𸫋vi�-�]RZU�	������9��� �6��>~v���\a�/�_" &�+�C�8"�%�&ܱs`h��~���	y?Eo=Aؠ������{�?��:�v�;��:`��7x��	�����ɭ� �������_J���|�z�`ε��h�Zl��o���k�uQH�j�z�W��f��I[@}.�m�S�nb������E{4 jF0�\�%����Vߞ��q��ŚQ ô�k��H}�J��7[ �D<8c񉧶�`���uRp!͝��?�]}��������{FX����0/$�Eۏ�y��������2��M��Nъf惲�7�����ޓ���;4�-����>E�h�7gs�∼;����Yg�����=���2T���Ň���Q�p�E��&t���t�����~��WI���m�����AZa]�ApSyD3.�]������-�>���RtK��� ���hl?f{�9G'��7�k~����$Қ8��M���2~���ܓ5��`�9���U�Ri��2.�-1ŀ<=��MH�t^���"�C�;�{��~�$�U5���)l�����`�����)�^�$¸s;�B�-�qt+ZU"`���� �7�3��ƀ��|��}���/����wb���C1���ݏ��|H�}�Wiίz=�QľRU�u�9�eɯz=�Js:�N}�C�Qk��ᴖG+����8ོ[��H4w����;$�W��	I��wڿ��=�����EEA�M����h�� �וQ�g�7�Ass�?ﬄς�돺�~��ٶ~���"C�(>��羚 ��j�E�-�D��ZKQ�t{=��6G/_�����'�_X=���;��>";�y�W�׼�<if��5�p�v��b���(��C�ߢ��q}�۷GiK��a���$ݿ���UdԾ���I��2�_��-'�y�K
�aB��v<`��gW�SMDqL����]�����5�Z�1c&����瞅�w�>��K�F�?�q� 8_��'�A�ӭ$�����~'�2�ON�e�KN:%�a�x1���2�Hڏ9L�� ����Z�x亜�u�^Y��`��)���m>^��aNG�K �a�v�D+']Y���� ��:`���ä@��א�_�/O�r���<������l�]���z`�p�½�G���oȤ2�#��g�/��0�0��rQ �RN�^'�ҹ ���m�v�޻�zC�x�w�~��x���b���c��m�5_'�r���R/@��y��I�[��8��» �B����V�Ʉ�沕�kG���w��d��y���<��V�u���,�@�� ˲��W\�/ЗLߖ��\E�����z�ŭe��V?\������k�b�Z��`��v�N����������G<�����]1�+�f���`�F� ��ն���0/��[X[.�7E^�}ċ����>��>`gk�s���֤�B�5A,d��2/�}��y�J)����}n^��`�����g��O�ݿ����K��)a�)[�b��wh�>��l��yVj�?�{��5����
��?�����;���
\%^�����?����4�7=G�^?g��mߢD�E{zQ��''��p��j��<����k*�(K����������[���_���D���=�������\Z�(�0�`�F�׿���_��f�W�  �IDAT�1��Α�9< �1�87u��sW� ����_/��I����7��%�(��7� ���=^�z��?�����W�>���}v?��d�[{6gJ`/�*����hm��R�ْ�����JXu���t�}���V�F�w�� �� ��LS��z����_���w^h�5a��i:�i��ME{��x�(���3�����7��z�N??5��=��uf;��ד�0�#�� +1����z8��?Z �W,v��8��lVۻK.�x��g|��Y��ty��)�������Γ��=o]��4�M�����oY[%�)+��f_����i�����k��>��{�9LZ�t�zK�ׯ�v�3O�z��_��\�xܨF���he���j��D ���_�т��p�6���ZO��}7�M�Mz�5Ã�a��KX��3������jn�j���{g�O������&�a�{�[�*��y��z�-�eF�5h^p�\�J��[�G�w�{��7G�[O6���]�_��W�~3��e����wO�I���^�C�������r�q�o���8���l.#p1[����N0M�Rv#�z0�'�u��7�]��M56��SV#~�h��í�G�|���o�\vG�0��f[����-t�H� ̬���>/���r��HY�2���؀�nu�b��%��E�E�~�"u>�Ѷ$Kɪ�K�*����\��q������䉀�/t�`��u������zs�(C>[?>�*;�?yBsr�ag��#�G������X�L02M\�w	��Lp;��c��^X�R����r7��TU���l,߾�u����st�g8>3����W�3�a;���5T�=ZPu�oT�./��?������W3t<�������
/�G��b~�� ���c���9��R��E7:��������s�-�UllYX}\\�����w?Tt$�����NA��._0��\��ۣ���,��oR��:+��/ �.A���/TT�p��2pm��W�L�������.q?�0Q0f����J��x��.fo�w��������㷓	�k\�.a��1��!Ml�n�-�������ַ��'Pu9�vQ6QH����������6��
NB���l�epm����� ����t��r����	�E؄��%Q�o�4')P>��W7�(���8~��o����2�2 �ǉ���1��A������=�U;�����C�U��$t���>�Z<l��s�W�=#��w���%TPMfo��o�Լ.-�왅�	+���D�//�<YǱ�� �> .>���E^T$ Ƞ7nT���0�(*�_������܀]���������c��B������d����^��y]�2Z����G�����!��U�G�7��z�Q�<,0�1m���SA�j��!���&��a�_��W�� ���m����6�?i�O$Mhy<���� ��Ȏ�<~S"�Ȁ��,�PUG��;?�����:���r��E �����\7N�'Ѝl�DE!�� � ���0�HA�P��8��f��C�f_.�~Q�|��5�4 G���n�^�^a���Gݶ�C5�e�pD!�����ưϞXl�?���l�����=%G��4f"o?�U��o�E+�@7:Ѝ�����*m��F@D�֪{�;M��3���Q���e]��uq�+�8<j �d�}}����F�y��k������u]�*�A����|k1��>'w���۟=d��I{]���穧ɂ(1M�CQ V���T@U�"8��Oi" �¿@�/�6�4�Y&�^ �S%U��O\���k1����{n��v���npqE)������h띥
�] �
pjw�N;��C�*\���Z �\ 4A$U����x�
=�x�yC�{�i���h���q�DU{c{*�5j)#Q�,��Te�E �9pU����ޡO�F�v ��#� %�¦�P�����F���� e{)a뻛Q�g��.fo��+^����?��௣%�u2fP4�_��w�+�+���E$2DV���� M���=�6��-R��T�$��*����D�����kPU8R���f�˟���� /�n𛫿�:�����E�U��n%v�2�Լ�!� P��~ͫp\��m� ��ɢn<��?),D��h���Ip ���Dex�g�<҆j�]�{�x�Ӆ[��M!x�ټ-+�����;�s���������?�*�J|����Js�Խ�c����2���(�����=7�:a6m�� m��C�r�d8�]+��v�F]��c�:�*���l<}�a<�ʕ"��X��E�Q��S�9ʢ�_Hm#j|�{rd7�M��>�7um�Qk��nR� �rw���: o��� ��M(
����d������Keث6����2Q��&RV#��1���G�r���ǳ[0�vWIѤq��ς �F�1@Ӹgo� �����[q�����+�6� �4
��{��π���$�OX���U!�ͺȻ9O�tQ߶���fs�IIK,E"�5��c� ���7���c`L��2,m�]yk&4�4l���G ���5����,$]�� Q��Y�MB�����QR�~��-��9.Cc� q$ՉdA�  �'ʦ��A��K��p��q��g�	k���? h��/�<��M�I$	 ���q�\�i�IS��U��R* �p���o+^�%�a��K�63���l���P�9��pf��'������7bi���y�?g�|%D!E��S��ϐN  ��Ƌ��U �6a���a�;(
a7h��6���; E�O&
"k�Ě�c�=CFb<�H���%^k���&���ں ���s��i�N�P~�ג�'�@�:��b��dVu�!��j�+� !�1�@׸��8��S����y!��8�E?ǟ�z�8d<'���bޭ ���# ��p�[f��ݠ$�RI1o�5�W$����('��F�@j  K{w[�\�|!)'�M>QCbh�y�z/�Dt�
��0�$"�	�R�ڊ7�P� )
���\�s����w+�  v8t�OaK"H[��E�iU��94dnTeʕ����'"��U倈hc/\ Hӻ�ݓ/
Mn�!v�Ә�N�9k�9��6
 m��>�0 	Bi�� �	�1���2��� �-9 "�&v����P���Z���U M	�׹�� �jic-E֝��c}H��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background.png-96087bb01c095a70303c14810a86f1ff.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/sprites/background.png"
dest_files=[ "res://.import/background.png-96087bb01c095a70303c14810a86f1ff.stex" ]

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
              [remap]

path="res://Main.gdc"
 [remap]

path="res://ParallaxBackground.gdc"
   [remap]

path="res://player/Player.gdc"
        �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         runner     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �      display/window/size/test_width            display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            InputEventMouseButton         resource_local_to_scene           resource_name             device     ����   alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/jump2�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres            