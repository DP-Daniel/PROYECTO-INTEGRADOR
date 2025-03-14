PGDMP      /            
    |         	   pgcenterv    16.4    16.4 ,                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    51095 	   pgcenterv    DATABASE     {   CREATE DATABASE pgcenterv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE pgcenterv;
                postgres    false            �            1259    51096 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    idcategoria bigint NOT NULL,
    descripcion character varying(255),
    nombre character varying(255) NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    51117    categoria_seq    SEQUENCE     w   CREATE SEQUENCE public.categoria_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.categoria_seq;
       public          postgres    false            �            1259    51125    cliente    TABLE     �   CREATE TABLE public.cliente (
    idcliente bigint NOT NULL,
    dniruc character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    tel1 character varying(255),
    tel2 character varying(255)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    51118    cliente_seq    SEQUENCE     u   CREATE SEQUENCE public.cliente_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cliente_seq;
       public          postgres    false            �            1259    51132 	   formapago    TABLE     q   CREATE TABLE public.formapago (
    id_forma_pago bigint NOT NULL,
    name_forma_pago character varying(255)
);
    DROP TABLE public.formapago;
       public         heap    postgres    false            �            1259    51142    formapago_seq    SEQUENCE     w   CREATE SEQUENCE public.formapago_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.formapago_seq;
       public          postgres    false            �            1259    51110    producto    TABLE     S  CREATE TABLE public.producto (
    idproducto bigint NOT NULL,
    costo double precision,
    producto character varying(255) NOT NULL,
    public_id character varying(255),
    urlimagen character varying(255),
    idcategoria bigint NOT NULL,
    cantidad integer,
    descripcion character varying(255),
    precio double precision
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    51119    producto_seq    SEQUENCE     v   CREATE SEQUENCE public.producto_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.producto_seq;
       public          postgres    false            �            1259    51137 	   tipoventa    TABLE     s   CREATE TABLE public.tipoventa (
    id_tipo_venta bigint NOT NULL,
    nombre_tipo_venta character varying(255)
);
    DROP TABLE public.tipoventa;
       public         heap    postgres    false            �            1259    51143    tipoventa_seq    SEQUENCE     w   CREATE SEQUENCE public.tipoventa_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tipoventa_seq;
       public          postgres    false            �            1259    51178    ventadetalle    TABLE     �   CREATE TABLE public.ventadetalle (
    iddetalleventa bigint NOT NULL,
    cantidad double precision,
    descripcion character varying(255),
    importe character varying(255),
    preciounitario character varying(255),
    idventa bigint NOT NULL
);
     DROP TABLE public.ventadetalle;
       public         heap    postgres    false            �            1259    51156    ventadetalle_seq    SEQUENCE     z   CREATE SEQUENCE public.ventadetalle_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ventadetalle_seq;
       public          postgres    false            �            1259    51185    ventas    TABLE       CREATE TABLE public.ventas (
    idventa bigint NOT NULL,
    fechaventa timestamp(6) without time zone,
    igv numeric(38,2),
    subtotal numeric(38,2),
    total numeric(38,2),
    idcliente bigint NOT NULL,
    id_forma_pago bigint NOT NULL,
    id_tipo_venta bigint NOT NULL
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    51157 
   ventas_seq    SEQUENCE     t   CREATE SEQUENCE public.ventas_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.ventas_seq;
       public          postgres    false                      0    51096 	   categoria 
   TABLE DATA           E   COPY public.categoria (idcategoria, descripcion, nombre) FROM stdin;
    public          postgres    false    215   �1                 0    51125    cliente 
   TABLE DATA           H   COPY public.cliente (idcliente, dniruc, nombre, tel1, tel2) FROM stdin;
    public          postgres    false    220   �2                 0    51132 	   formapago 
   TABLE DATA           C   COPY public.formapago (id_forma_pago, name_forma_pago) FROM stdin;
    public          postgres    false    221   03                 0    51110    producto 
   TABLE DATA           �   COPY public.producto (idproducto, costo, producto, public_id, urlimagen, idcategoria, cantidad, descripcion, precio) FROM stdin;
    public          postgres    false    216   _3                 0    51137 	   tipoventa 
   TABLE DATA           E   COPY public.tipoventa (id_tipo_venta, nombre_tipo_venta) FROM stdin;
    public          postgres    false    222   �4                 0    51178    ventadetalle 
   TABLE DATA           o   COPY public.ventadetalle (iddetalleventa, cantidad, descripcion, importe, preciounitario, idventa) FROM stdin;
    public          postgres    false    227   5                 0    51185    ventas 
   TABLE DATA           t   COPY public.ventas (idventa, fechaventa, igv, subtotal, total, idcliente, id_forma_pago, id_tipo_venta) FROM stdin;
    public          postgres    false    228   �5       $           0    0    categoria_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.categoria_seq', 151, true);
          public          postgres    false    217            %           0    0    cliente_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cliente_seq', 251, true);
          public          postgres    false    218            &           0    0    formapago_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.formapago_seq', 1, false);
          public          postgres    false    223            '           0    0    producto_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.producto_seq', 451, true);
          public          postgres    false    219            (           0    0    tipoventa_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tipoventa_seq', 1, false);
          public          postgres    false    224            )           0    0    ventadetalle_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ventadetalle_seq', 251, true);
          public          postgres    false    225            *           0    0 
   ventas_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.ventas_seq', 301, true);
          public          postgres    false    226            o           2606    51102    categoria categoria_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (idcategoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    215            s           2606    51131    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    220            u           2606    51136    formapago formapago_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.formapago
    ADD CONSTRAINT formapago_pkey PRIMARY KEY (id_forma_pago);
 B   ALTER TABLE ONLY public.formapago DROP CONSTRAINT formapago_pkey;
       public            postgres    false    221            q           2606    51116    producto producto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (idproducto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    216            w           2606    51141    tipoventa tipoventa_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tipoventa
    ADD CONSTRAINT tipoventa_pkey PRIMARY KEY (id_tipo_venta);
 B   ALTER TABLE ONLY public.tipoventa DROP CONSTRAINT tipoventa_pkey;
       public            postgres    false    222            y           2606    51184    ventadetalle ventadetalle_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ventadetalle
    ADD CONSTRAINT ventadetalle_pkey PRIMARY KEY (iddetalleventa);
 H   ALTER TABLE ONLY public.ventadetalle DROP CONSTRAINT ventadetalle_pkey;
       public            postgres    false    227            {           2606    51189    ventas ventas_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (idventa);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    228            |           2606    51120    producto fk_categoria_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_categoria_producto FOREIGN KEY (idcategoria) REFERENCES public.categoria(idcategoria);
 H   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_categoria_producto;
       public          postgres    false    4719    216    215            ~           2606    51195    ventas fk_cliente_venta    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_cliente_venta FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 A   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_cliente_venta;
       public          postgres    false    228    4723    220                       2606    51200    ventas fk_formapago_venta    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_formapago_venta FOREIGN KEY (id_forma_pago) REFERENCES public.formapago(id_forma_pago);
 C   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_formapago_venta;
       public          postgres    false    228    4725    221            �           2606    51205    ventas fk_tipoventa_venta    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_tipoventa_venta FOREIGN KEY (id_tipo_venta) REFERENCES public.tipoventa(id_tipo_venta);
 C   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_tipoventa_venta;
       public          postgres    false    228    222    4727            }           2606    51190 (   ventadetalle fksc0p6tqcgcmp6ilfp12aixycp    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventadetalle
    ADD CONSTRAINT fksc0p6tqcgcmp6ilfp12aixycp FOREIGN KEY (idventa) REFERENCES public.ventas(idventa);
 R   ALTER TABLE ONLY public.ventadetalle DROP CONSTRAINT fksc0p6tqcgcmp6ilfp12aixycp;
       public          postgres    false    227    228    4731               �   x���1NAE�S� "��`)J���;�l,��������!��DCKaٲ���:��f�P�:l4�1ָ��ܛV 9h�|��
$��#�4�7���f8bυ3f����'�h��(�~�N����K*�Lp���45�1�艖D�]>����i��xsgq:6>!й�T\�@B�e�x�Hܝ��)����/�����Լ�m_��xB7-����.�����$         �   x�345�4426153���*M�S8��(����������Ȑ3Ə��Ԅ��Ҁӧ4���D�Ԣ���RP�Z�T���A��~��a�
�>��~!����F ���8az]�2Ss8�MP,720�4�407���v��c���� �o,z            x�3�tusu���2�tp����� >�         g  x���?n� ����`�8�V�j;�K�n]��`����mr�N=�/V�Fɒ���x�>~z��*&��y\�q_��<�ġjƫZ�uSo�BM�!��97.
ma���uD�j�(XCtJ����iɊEQRZ�k�y�+D'b�^zg��B����r)y��$�N�iJ�=D+���0O���As�ȷja�禍q�7v/�"��˳���8H7�_�����ާ3�7��3t��'ɻ��mc�|�x��Zi���[NɵƋ�Ur�k\�����'7GlZtQdlV��w��#���m�Un�l���|���S�~�g�N��Z���&�͞eػzH_jm� !}����)���Y�� �
��         ,   x�3�t��qq�2�tst	r�2���qTs�
��qqq ��         m   x�320�4���L*�Wp�/,�,��46�44�4�220�4�t>�97_�=1/�H�173=�� ��L��J�9Ͱ)1���1�1�_�`��qxaЊbNI��qqq �B"�         a   x�]��1CѳR�'���IT���8q���
�T�	�i�� 8dASu�����Y[j�4*ܐ���_W?����-���/�WTA:��z����     