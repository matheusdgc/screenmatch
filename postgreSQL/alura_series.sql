PGDMP  (    "                |            alura_series    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16456    alura_series    DATABASE     �   CREATE DATABASE alura_series WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE alura_series;
                postgres    false            �            1259    16457 	   episodios    TABLE     �   CREATE TABLE public.episodios (
    id bigint NOT NULL,
    avaliacao double precision,
    data_lancamento date,
    numero_episodio integer,
    temporada integer,
    titulo character varying(255),
    serie_id bigint
);
    DROP TABLE public.episodios;
       public         heap    postgres    false            �            1259    16460    episodios_id_seq    SEQUENCE     y   CREATE SEQUENCE public.episodios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.episodios_id_seq;
       public          postgres    false    215            �           0    0    episodios_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.episodios_id_seq OWNED BY public.episodios.id;
          public          postgres    false    216            �            1259    16461    series    TABLE     '  CREATE TABLE public.series (
    id bigint NOT NULL,
    atores character varying(255),
    avaliacao double precision,
    genero character varying(255),
    poster character varying(255),
    sinopse character varying(255),
    titulo character varying(255),
    total_temporadas integer,
    CONSTRAINT series_genero_check CHECK (((genero)::text = ANY (ARRAY[('ACAO'::character varying)::text, ('ROMANCE'::character varying)::text, ('COMEDIA'::character varying)::text, ('DRAMA'::character varying)::text, ('CRIME'::character varying)::text])))
);
    DROP TABLE public.series;
       public         heap    postgres    false            �            1259    16467    series_id_seq    SEQUENCE     v   CREATE SEQUENCE public.series_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.series_id_seq;
       public          postgres    false    217            �           0    0    series_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.series_id_seq OWNED BY public.series.id;
          public          postgres    false    218                       2604    16468    episodios id    DEFAULT     l   ALTER TABLE ONLY public.episodios ALTER COLUMN id SET DEFAULT nextval('public.episodios_id_seq'::regclass);
 ;   ALTER TABLE public.episodios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                        2604    16469 	   series id    DEFAULT     f   ALTER TABLE ONLY public.series ALTER COLUMN id SET DEFAULT nextval('public.series_id_seq'::regclass);
 8   ALTER TABLE public.series ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �          0    16457 	   episodios 
   TABLE DATA           q   COPY public.episodios (id, avaliacao, data_lancamento, numero_episodio, temporada, titulo, serie_id) FROM stdin;
    public          postgres    false    215   �       �          0    16461    series 
   TABLE DATA           j   COPY public.series (id, atores, avaliacao, genero, poster, sinopse, titulo, total_temporadas) FROM stdin;
    public          postgres    false    217   �:       �           0    0    episodios_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.episodios_id_seq', 720, true);
          public          postgres    false    216            �           0    0    series_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.series_id_seq', 16, true);
          public          postgres    false    218            #           2606    16471    episodios episodios_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.episodios
    ADD CONSTRAINT episodios_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.episodios DROP CONSTRAINT episodios_pkey;
       public            postgres    false    215            %           2606    16473    series series_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.series DROP CONSTRAINT series_pkey;
       public            postgres    false    217            '           2606    16475 #   series uk_sujdgbuv4embh3cjvu1sux7ri 
   CONSTRAINT     `   ALTER TABLE ONLY public.series
    ADD CONSTRAINT uk_sujdgbuv4embh3cjvu1sux7ri UNIQUE (titulo);
 M   ALTER TABLE ONLY public.series DROP CONSTRAINT uk_sujdgbuv4embh3cjvu1sux7ri;
       public            postgres    false    217            (           2606    16476 %   episodios fk8031rj1wc9dgbh8a9mr6env2m    FK CONSTRAINT     �   ALTER TABLE ONLY public.episodios
    ADD CONSTRAINT fk8031rj1wc9dgbh8a9mr6env2m FOREIGN KEY (serie_id) REFERENCES public.series(id);
 O   ALTER TABLE ONLY public.episodios DROP CONSTRAINT fk8031rj1wc9dgbh8a9mr6env2m;
       public          postgres    false    217    215    4645            �      x��\[s�8�~V�
n�Cv�&.��˖m9q:vⱝ��j_`����-I٣��{.8 %�U]=S���C ����eg�L�a�9�>�x�������L���p��)��Jg~�Woe�U�>��=�|%u��s��"�]������iKi ���{\��y]W�Y0*����%��0�k�?��&D|0�Ng)f��k�2"�Y���C�]�H�]��ʎ@�hi � �g�?w��Mk�nS6̅���*�Aayz���Z���z��V�f>|�J�y�/�c�9,PϮai��,��O#���Y�?�Z�Q0N2@�Y� �uœ֡������l_l�A^��[U�2-O}�z�Ϯ>ߚ�v�[Yյ����2֟C�=���r�V]�1]pg�~O�D&��"P(nÅ���y������@(�vK�����/e�V39�C�hK^o.bA %�	�:P�L�KhF�.0͒��Q�P8�@�෩��US~��k�;9dD�ĭ���V�a[��5!�蛤J
��Ѽ��?쮅/l��O�}�CD~���dw�Z�MY�Uۯ��ƈI�qs��n<�L}E0� C%�iܙKۼ�բ��l��+K�3-�QBf���tUc�"�
7Iv�	�H4�j��S�/�����V�(dAěd�7�6�,f�Z����С�B�9��ڪ|ALӕ�[�V�P�D�;5U_O�q�F�>���W瑩��hf��~�hA-��ն��⁵�w`dܼo�vU��I�]li1�l ��ч�g�Y�hv\�M�6�	��<��e�l1*L�,^���n��f1,6? R�.�捘<����#p!
�����{_���@��Y)�B���&�<z��L��3(G��fw�=���S�T.���*� ��������j���&d$
HHM
�,/^{�_Ĝ(�̜{R�+?ʕ�A�5#s>J��<���0�jd�鈇�4��]k�;R��+e#��Ee�fO��{�ݶ�b4�|Vx0�VM|4 f_ͦ���#ߖ��>��q8�\:�/�&��� ���9��ڃ���m�f����e[{�9���١�{�GOع��ϭmJ�9�?�$��
Η�H�����=��V�"D���z�����/0��_�@�en��m639�7�"0�j`İ�BL�2��|��`D�,i��PVO(M*��@?w�Չg|N�@��.�o�C�����7�x3���3����J��=u�������[�h�i�I�Ғ�,`<�̞J�Ս툥I"��/ɠkW�����pQ%h������V&��@���.�j�^Eۜ�0(
W�mm�e�j�t/�k������v]��rtB�L�Y�a��l��Ƕ"���a�0�A�d
�&�J��NNN<CA�Ʈ��;�D�C&��E���.�9�ͩ���,(B��GYv�D8KMaP֤�P��T��q�LI�#g��7�oq��`���e�|@�|$��rV|M�.vU�_$�"|>�+��>�k��YG4��E"�[��y� �"����Kp���c����E�?�����i��A0ƣ�y���,_�>�4�����l 2ţ91��EU�^l�3��'o��!�Ȓ*�	q� �y���e�R�NhR�־2W��i�h��a��\H��b�2�Ǆp/ =U��*��_R�zpW-�j��<}� K
���
�+6��F���॔�1�A[���!��6VV�G����7ShV�X�E.�� 09���!�*���[�R�9���O7���Z�{m@ &�컭�;ېU�s�0�V
�}nw�50���iy1h��l%�Y��%�Q�~�S��kȀ�(�협��M�:h�=mO�\h������Ԛ� ysJ;K�B�w�8p��^예 �m���L٩.g��w4k���@�J9���e!�8��	��`�����NS��i8�w����TpC�3 �-X�!	��:��(E`9nJ�D6Fax0<(�ƽ�6��>����@j���Hk�k����Q(��C��)���}pc��F8N�(�A�eS.Q,?��(���҉�ֻc�C0�:ܚ�5���|������Iyr�;�&`�t��"�S*����	SJ-D�����Y"�jǁb� �c��'��S��aQ�ph_3��N"�d&@i��t�nC�P+���nI�r���b�F���C9F����	�"5� E�frO��-,�k%�AH�U��_S����I����t����GJL<��T�B^���jc`���bΘlF��660&m�φ)5%S{�i��a4C�3��P ������rY��5C��O�_�@���"�e���H��g�&��].��6'��F���!2�+��UI��P�h�1e��sI�D�(+.<+����qc�~T��4z�| �Q��!�u�ŘT���q'�U&�1�q�������j��rN���v�����|�b���3�D[8'�Tw�	�"6�4�O���@H��������w��s7��I��3�N�PS1"�!��{K?G��V��s����FD�� 3Jcl���R�(�G=�ln���%��a��+341wf�	��mm�+�F��l�@�S����yג*G#�Pޢ��m�����Ջmr��˃,GM�G�ȧ�[��ġ-UFb7�������s��
���ka����s��A&"�yk���J��k�����N{�OH�"�M]�5���{cB�)GΟ�`�]�-}+�d ��徠'kk[�\v�gT�c�2� R�/�����`�y�	�IK�;E_u��R㔕P��	%UOeִ��q�w�
�w�YѳH|LS|�c�b	Ƣc%��X&��܉�]��%��7��(�_�rȥl��7{L��)K�A�S������=����o�;2(f���P��(MV��B��9�o׷��юH���Q��b�#�ۤdR@��3[����I1,�#XX����:H�C�;���i�,u�5��7�!��]��I�C���q����|��"ҩpFŕ�j�Cy��3��b� &�"�˻���}2�W n���,ci:0��� m*ێ��(�$��H��oo��p��ґ
!4@
���g��]\Ύ|�P�nȒ[����'��"Y�ySf���x�g}D	)��bFIq3ӣqb�zS�p@˥屢ƹ�w�eϫ�qC��b*4",A{�lL�i8%�L\��ŌN�������n��]1A01F����%�e��(b�����g��}k!I5X�.0�=���]*r.y�!�����l�lcW-�����$vD��L��#'�!�~&x���<"�Z�C��ܮMc�vW�61	1�&F�B���ĳ� ˨K�#e�g W�!=������3�ޡ#��ON:�ă/~�;G��I*��l�<i�Whi�Qu�.6�}xqB�K�K���<�@�H�ѐ\���	��Z:������G\��%|>��y�� s��9ߙUc��q��I�q���>c�4�|�i��O�\�m�4���B� �D��M�D�d�/N�#"�����|�Mt�H��<��cJ͔|�˔|��S��5M��bb@T��3S�Odd��#))R2�LS�<)%WoU�l����c�L��U�����dz_��0]>�>��o�W�]@X�d\2<�<�E�8G,M�\�0��,֐��	]vtz@���@�tg��p�{�ufP�1�K[�l�p�w�'f	V,�mU�2��L�a��T���+�E֊���'�#����ֶ|�s��]�ld�ɰrP{D�4�敏��|^�V���ҁCr�;�L<�����n֙����/�{�'��Zr�;1��8Ĥ��.�fn�-*v�r��l���U(%���q퉌�|���I�J�Z, �P�C3�r�AVi�ĳ}��F&ƌ�5��G�\3yL�&�3䉙��qv�,-�%�M�p�<�o(/�Vggg�s|o�;$�\Λ�?�K�]9l��qM:�>�]�KG��a:/4�Ձ������3��ƶ��y�r� O�s?�ԈO��A���2���R�'T?�e�    ���a��p��	M��iWמB��YNZq7�.	.�����O�p6�d�x�{��ͅi!�����8��NF�Q��w��Gr��q G7ee�4�����t�����\ e�/T1KG�+����q9�O�	�f�J���r:��ٮ!��c��]Ӕ5��qF=0��5�?�3�SW��#E�0�.�6��BJ&Q�N�ͨG�T�Z�����[��"r�L�;f�����1 �a���8��+:�(&gj-7M�Y��!��v9��w�GY<�3��l
n�9���d`����'lٔ�g����:x�zu�_K�U�T��������Ԑ��D�a�8'��;,�������x��[S.q7�ܵ3퍮��յ�#~hL�Tr��C�P��� �E&vRƽ;!w�Ld-U�Ƀ0�b��(�L��Ǐt�㰫y������3D�s�������]9d�L���'��j����5�zL�3�̵��p�pn�+D���\���4Hd	���S�x,[ԇ�Od�X��_�y�R[�>1E.�|\�ٌs�jPѓ�ȝv��U�EP��ω�#�h\t�c!ri<u?�Zl����%������/U�԰	t�I�N)�Y���n�h
��r���j�x�ঘx
Ƨ���M�Rk�PR�%���<��0�k��t���Z-Ѥ#:g�?4`-l7�+�6,�I&�*�3Gcz�A5w:���t�\����( =�c�b�}��pj��Jnu������,�]���'| '˝s_ִ���������aL8)8W��vo���n�:T#��0�%���F���Ш3-��sΓcj,�<��"B<�E�w�gG�����e3):�s���R�0��&���~֚i�ѺbW:��(�s�_b�����뺆t�v9I|���̓��q�^���3˥��D�d@9�d]욅t0 ��z<'��y�zn�$25�?����'ۂ���[Lxߜ��i�ΠSic�=�v3<�Ud'�vHv��e����"�Q�GN���;��L����]ߐ0�{�u~��$w�k�Fd�X7-����e239KI��k9H@�����r�kJ�gƳں�.$�]�P:��G�W��C	:r�3��L�Xv� �jV4�)Nr�L�k�º��'�{��v���������y�<���kp�XԷ�l��ݶz�Q<�m\HN݋a648��!�����|
�[:�q+(�x8v�7%��דih�����0,RyF͓B��E%�؎��<��,.��`�{$�����א?���E;D�]��i$b9\-B1�kkR��^����Y¤��$� ��Y�6ǜ[*'S���}u�Т�k�RŴ�r�󥖀��F��mQ��t_-�ڗuj^ģ�r�ԉ I�c��;)�{�%�7(��Q�������"�����l$���k�J��$�0���o�J�8}�[�j�B&Z餖�˦2�D�+[�cQ���b�w]�Tu���~��,K��I�C��D�&J��tD�J�ԃ�7��&�Y�^��d�Ζ��؎$a2�7v�	˒F�g�"D�r������rT�g�ۄ�㐀C���$���Ԛ�骚�9�Z��´�D<�'b�cM��u���<�W�ʵ���)v*b3�(%�S(�c��qT޸l�L���F(�ec� �㍬z	��ӹ��W��ñ�5�/�k���{¡Y�hͿ���o_�r4�Oo���C-"�T6Q��(����}��ýr{������E�,~"5�fA�������� �gb[+γ&'���]pUW�2� ��B����l�D����*.�Ds�S��֔��p-�j1�G�������3�	v��a�3A�2�#�(8)��7��jbT��kNL��t���+˅��L��̧T�1�O'/������t8�9��]����(�P+9��D�Y�u�a�?^�`j� t�Z���\��ͷ�,�
ev2[�07�s�6�3(
G�Ԝ�}dH��Д�T�X�6��h��~S�-�$�3����09��k[�݊�ݘe� SGC���O~4�,;��.\J"w�J�)�,�_[�������E�c�{��f��L����W<9 ��k,ڹT7�r䩱�q"L���v�2a.���kR����+�7�YZG^��U�Ox"P�� �I6�ǡgTD����Y�����^�o{)�s�N��W��} Oӹ%��p��C� q��	��
�\��X�o����Pr��`��]��m5���|�[F��An�8N=��['�|�2��[��P���(<CݕW��N�m��e��^	X�B�/�Q�c�qge]wgg�K�P|��U����t�w��$��H�&��)��F�}W�ʩ'�d$��caK�A����$A[m��	I2Z�{�a�w��u�h)�zC����·_	5���Pu�WU��m�Ŷ^�\̕�FP}�W�vp�5�q��ZZDO7�{<Z�`�¸��u�21�xN���Q���-r�e��s���y�F�V��zc�'ų�tz�$�㥺fِ[�3��}b[K�7�ޜ'H��v�ܣ���t����1JZzLO���o��B��G:J�2�LT����	*���T/�0]>�+�|R����o��@-��]�����������G�W?�6/�G�> ��|�/p�b�>fzPn�'tW����K��ᖫv� шd���eE��*���ׁ*���S�X��Ս�o�k��S�`W^"	��<ӧ�6qO@:5⭩�״� %���1�36G�HWNJ�;����'���oǙpVxi��),�ۏ�)5kO̝G���P��]ݱn�J,l4�ˀ���4���{)���_0��������8˞��e����xT�����䱧����-��+�Ȧ3�ϻ��a`Jv��䓹3<��05��������6�3��aJ��x-��+p�>��.����O��U�y���OC|,0�R�DûZ��џH
i��`�'�{3�V%��#�Y��"�R�}U�#]x�	����ٟ���m��"1���"|a�g���τ긱���yP�ø��)�ͅf#P?�:�Q&�Y�eDN�G4���yE���cN-]E��E���tV�%5r�kJ��ӻ���_[��a����&x�7��8�g"�n�27�M���<86bj�bwJ^LR����f�	��	���c�8�:�/�+&�ŻX��)�8��`JE���n���7:M�O8(���xXՇ-uiˆ��й�XN�O�7^ڦە�a�|�d>X��+�_��,FˤS5!C"��D����H�����Ey����OV��
���T��������G���9�#lS��V�]���+�{`��҇(M()�yTt��%�rxT|��	�on*9D%���P`�JQ)�d#U�Lh{�vk,�Fv��9@�u8�^^�9@��:�����(��co�0�B��-�9�t���Ҩ��ڈ�s�W�E=J�x��GE�(^av��Q��\x*���kt7��bh������"�L�}?,��Q|GN ؝q]B�Y6��e���B���+�C��mn�U��E�T�����OUzv�u�IS�+�(z���]I��&�y���K��[0�}!p+���$��C�k����XBN�!G\�D���y�m{�l
A�!8��&U����%��!܊� N�=$�gojڢ�|���$�v��7;����w9���f�!�5Xk�en9��uc]����������=,5{�����ؠ�3�k3��z���x�#̿;�7Pd#ol��~B��K	?ǣ�M�-�g��+]o�%�	'Jo5�������xO�~���7�Մ�H(��I�����ek��
����2��m��@߆@��7���A��7=�:/�8J���ز�x�D������㬼r|���R����p����G:��=�u��,����vc����l�x�J��������|���/`�:���T�	���	�!p�:�um���ڴ¬MM�H8�����]�%�ղ���$�f��SPT�a_�#M:��)q �  @p2�N±(�=i�a�A�A
y��Qdt1���������R�0�P�Mm��v������e��{1pnצlο��	_F�kn�W��
���D�L��r��c�dO�~��횪[�S�U�g#��	�ρ�?�;uW<|6ķ$�˴lK��4A)��\�{~Fq�h	7��'D�j�L�xĂ���rQ���P��QA�JFH��,��,���M[½^|�w.�M�tȊK�(�����T�/����z��� T�n{�~��û�{!���s�hv�b��o�?s�pj��w$!����q�U�Ќ��O���A�r�{���9:h��X��?`��F�#s��7�8�u�$;��~�t�ѓ�,�R��d�Q�[�;�o�S�]ɜS��"�M�$s`����ɰ�Q[\�)8/q1ƺ�����{G��6-|�}!�JA8��C�ҟu���v��Ɖ?����
�H�<�q��@拽Y!eV���5�N�,eƦ��	���_��^����2*��Vw�qȯ�پ�˿�Pi�7yF"�֐H褌���z!�/y!qA(*3�l�v<*R�F	mR�[5����ykVN�
�D������6�^��Ry�T0"O_�@X!�W*u$|����!��۔�♵�@.<N]\�h�U�F�s	�E�SH5���C>�c���۽w�Y(�7"��i�q��-�1��')�V.���O(�!/L�ץ,A"#Bgb��G�_O�%����1;�B�RO��P��O F�n<f3|�g�m� ��]y��|*��]IO�.�`"X	���-��mmU�͏��(��f3|��MA�.���lvQ5�td*�2�(�k��	�E��]
y_G��sJ�P�C���'���RC���nh���*�r.|c���@�Ǒ���*�x��săf���3�3�<�C����_>��Z��[���9��?����      �   �	  x��X�r�F<�_1���4II���H�H@�E����0�`@�����!�T����^�c���]˕���.� ��������Ȃ]���t�M�lld.�.{'�ڱ�����}��3��I�]�}�:��"���y��^���2�(_{�������R.�ى?Y?8��w��"��I?V�ϒ�ĽT�p������h�au�s4�����W�=����f��~��t����e�ę�-y��]I�b��Z��F�L��Ӆ�g�X�C�+K_�\	&��qMY�Ya/{N���miu!���й�b#�78�eע��.e��ѵN��ɢ\I�Թ�x#�����j��}��z���������|t� 0a��:M��U����E��\G�*�m�+����Yb��&���\�<�F�tB���v��H������4j�'�,Ӧ�1��5�tQ��
B�K�u��Dwq*_kc9���������c,"��9/"�s�T��r)#�v��@��n�]��2Z1_++p��(N�A�@āsvq6��p�㉻:�o��gur΋���Em=��I?��k8'l)i�9�%+��Ah��W�*�
0p�U���@l�_�ٚ�0�%?���A��a��p�<\�����ģ-�Y����D���i�����"��?�i�#p���RY�AFۦh�N��P��fYir��lh#ho����¢sn@���w�8�\R{](nV��{�na�,V
�B��b�"�����/��?����\N�[���&�Aj�ãW{���Ev6�TM����M�gPw�8q�����7�<P���N��B5�(���XsVb�(@Y�/��_��eN��
�k-��@_n!��HJ���RC\�h��,H�)�t�v�s�/�T�(-u�ep����O*gc���?�>�O����k��j����	VC?[�E~�Zd��﹣�g��zC���o�FAli� �9mWBp�5G�N'�T�V(E��ɁhF>T�ԗ���Ӛ�MoؚU���_�cS�;祠�)�/�h �P�T���s����Eʍ��J?vٽ�Յe�_&�^��]�mx�Ί�͵R����u��$H������$[?�AKB����4�x��O��}`�.�H(I�(�Z�Ak�W�b�0��,uy�&]
�sj�����\�j��=ǅq�0v�u`O�o	��q����W
��4ܻ���M�"V� ��7�Ӑ�j��Mj/m��'42�}p��熰�K��ޱ,ҰNv���N��������d�K�P����p*�o� ���Qhʫ"�SC���ě�i�W�jT���	�����V�C����R��̓ ���#��62�
�2��.!5�������K�z������v�\�g�Mg�w<	���!%QTz��q^ܥ�{�����M�zi����1��GaYt������2	B�pG;��v�G'7�]�	ij0���J])Z���#��V
>R_"�U$�����2�����M��̒,��;�!�-I;�ǮJ6k 4�X��R�w�bQ����dӉ�<�q�Q8���^�\�`6�?����h�Qr��f~��$p��z��X����7���^��|b�����6نӍ�L

�z35=�� n��nC�(Z5h�(d�7��%�8�t.~
+�H�۸���i#!� �媞3x{z�:�x���ٻʶ����!��.�ʒ O% F��'/��AH4G�ɳP!��>a�=���P���K�'�.��)�WA�����N�"���F/eY�����!T{��dX���d�)�\�E���:�+��qgp�\s(*���sV����y���^C�H&�ri[�}1pq��γEvk��u���p����~�X/���8N��|2����G���RM�kh �H-�
���aZ�;M���/K��fo45`�~h�F�]^|�K�I�{Z��0��F��>�^��R1�M��*�mp�46��y��03�rpIU��mJ�@1/:�y���;}�������R�1�b� 5��3R����z��ܫgG�p����z�v�B^8��F���Gߥ����23��0�"�ʄ�����lSV�6KC�OBg��ɢ� _8M7�@\�6H`dL6H���#azBR�U]��Ȣ��e4tjp��.��SQ�?
��,���K��A�pQUQ� ��B
N_8�e��b|���k}
����p���s�;Cz�h�!����^�@��Ϣg KKs�a��*��0��I$t�J�Y�f��u0y�$+�а)� mD�)�CG��!O��i�n�)zyp��!���0C��H���4	�Rk������J91��x�t5��8�B"q��$�� �W�k�D���bd���/���*�� ���OsJr��#�e����d~���B��Ra>;~V�����$>�����-d-[��U5	K�s��&pm$�DB"�-N�Z���1M�8�G0Z��]���h�s.�dE\:�~��^���7u�;     