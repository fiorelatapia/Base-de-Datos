PGDMP  2    ;                |            ahsoka    16.2    16.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    ahsoka    DATABASE     {   CREATE DATABASE ahsoka WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE ahsoka;
                postgres    false            �            1259    16423    likes    TABLE     ~   CREATE TABLE public.likes (
    id integer NOT NULL,
    id_usuaria integer,
    id_logro integer,
    fecha date NOT NULL
);
    DROP TABLE public.likes;
       public         heap    postgres    false            �            1259    16422    likes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.likes_id_seq;
       public          postgres    false    220                       0    0    likes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;
          public          postgres    false    219            �            1259    16411    logros    TABLE     �   CREATE TABLE public.logros (
    id integer NOT NULL,
    id_usuario integer,
    titulo character varying(100) NOT NULL,
    fecha date NOT NULL,
    area character varying(50) NOT NULL,
    descripcion character varying(200)
);
    DROP TABLE public.logros;
       public         heap    postgres    false            �            1259    16410    logros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.logros_id_seq;
       public          postgres    false    218                       0    0    logros_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.logros_id_seq OWNED BY public.logros.id;
          public          postgres    false    217            �            1259    16400    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    correoelectronico character varying(100) NOT NULL,
    fechanacimiento date NOT NULL,
    nomusuario character varying(50) NOT NULL,
    contrasenia character varying(50) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16399    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    216                       0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    215            \           2604    16426    likes id    DEFAULT     d   ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);
 7   ALTER TABLE public.likes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            [           2604    16414 	   logros id    DEFAULT     f   ALTER TABLE ONLY public.logros ALTER COLUMN id SET DEFAULT nextval('public.logros_id_seq'::regclass);
 8   ALTER TABLE public.logros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Z           2604    16403    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16423    likes 
   TABLE DATA           @   COPY public.likes (id, id_usuaria, id_logro, fecha) FROM stdin;
    public          postgres    false    220   �        �          0    16411    logros 
   TABLE DATA           R   COPY public.logros (id, id_usuario, titulo, fecha, area, descripcion) FROM stdin;
    public          postgres    false    218   3!       �          0    16400    usuarios 
   TABLE DATA           c   COPY public.usuarios (id, correoelectronico, fechanacimiento, nomusuario, contrasenia) FROM stdin;
    public          postgres    false    216   v"                  0    0    likes_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.likes_id_seq', 5, true);
          public          postgres    false    219            	           0    0    logros_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.logros_id_seq', 5, true);
          public          postgres    false    217            
           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);
          public          postgres    false    215            f           2606    16428    likes likes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_pkey;
       public            postgres    false    220            d           2606    16416    logros logros_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.logros
    ADD CONSTRAINT logros_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.logros DROP CONSTRAINT logros_pkey;
       public            postgres    false    218            ^           2606    16407 '   usuarios usuarios_correoelectronico_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correoelectronico_key UNIQUE (correoelectronico);
 Q   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_correoelectronico_key;
       public            postgres    false    216            `           2606    16409     usuarios usuarios_nomusuario_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nomusuario_key UNIQUE (nomusuario);
 J   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_nomusuario_key;
       public            postgres    false    216            b           2606    16405    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            h           2606    16434    likes likes_id_logro_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_id_logro_fkey FOREIGN KEY (id_logro) REFERENCES public.logros(id);
 C   ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_id_logro_fkey;
       public          postgres    false    220    218    4708            i           2606    16429    likes likes_id_usuaria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_id_usuaria_fkey FOREIGN KEY (id_usuaria) REFERENCES public.usuarios(id);
 E   ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_id_usuaria_fkey;
       public          postgres    false    220    4706    216            g           2606    16417    logros logros_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.logros
    ADD CONSTRAINT logros_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 G   ALTER TABLE ONLY public.logros DROP CONSTRAINT logros_id_usuario_fkey;
       public          postgres    false    4706    216    218            �   @   x�-���@�7�BFQ�I�u����b!�0nE��-���|~�2ػׅT'��߇�x��      �   3  x�e�MN�0���S��79@�X��b�f���?�q"���#�bI[	��b�{ߛql�ġ�OHh�����0�<&6�	t�뢬]����{kx�u쬱q 쉝�'&���'�T��R��׉�Dy���MQ5p���<�������.RAa��ݫl`?��~����
����.���v���8�c#}uQK�_�]<�'R5԰�b���@9�!���S<gWE�������r�&���DW���tDQB�E`h �@O��vp�]9r-(x�Y��D�L���������Ď�ˍR�k��      �   �   x�]�1
�0�ٺ��$[4�z�.&x($qI�z�^,Y����y|�;�#m����I�k��T�1_g�����Ҟ�� 5��)�"����5��/wC&�[�!�<�{�Q̅��?����߷N�1 �	,8^�     