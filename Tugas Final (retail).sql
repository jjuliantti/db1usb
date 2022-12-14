PGDMP     +    2                z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16565    retail    DATABASE     f   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16571    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(20) NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16586 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tgl_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16576    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jk character(1),
    no_telp character(14),
    alamat character varying(50)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16566    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(13),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16581 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16571    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   ?                 0    16586 
   pembayaran 
   TABLE DATA           Y   COPY public.pembayaran (id_pembayaran, tgl_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    213   ?                 0    16576    pembeli 
   TABLE DATA           P   COPY public.pembeli (id_pembeli, nama_pembeli, jk, no_telp, alamat) FROM stdin;
    public          postgres    false    211   J                 0    16566    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    209   ?                 0    16581 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    212   ?       n           2606    16575    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            t           2606    16590    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    213            p           2606    16580    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    211            l           2606    16570    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    209            r           2606    16585    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    212            w           2606    16601    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3182    212    210            v           2606    16596    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3184    212    211            u           2606    16591    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    210    209    3180            x           2606    16606 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    212    3186    213               ?   x?M??n?0Eg?+??(Y~???K?v??8Bb?~??????Ԁ?sh^?F[:_?????cm??ma?{$Ɖ??~?F???/?K??CL?@?9Њ?~Ay?ˋ$J???}>?y?J????з_b?G?J??Ʃ녀5???L_O?>????Ҵ??s??KX??5??v?y$??ֻ???3?ތ???A?]"?Puj??06w??3؈?I?B??oa??J۳S?'????L?         ?   x?E??? D?o?I??zI?udk?/???j??^ͫ.??? ^L?SH;????A0@Fm*???~g?J>?d\??E???}?=?Y-R۔?IJT???2???j!??mAA??-????k?Gc??Mֈ#H`q????X?qphro??)?? gB?         /  x?]??n?0Eד??*?c{?E5
t?ͤE(4q(?????$Qw?????N??r?;ЌIf?VD.?`?[?	'^???Y?$?????Ԯ;u?.0),???a?`7"߷?jT?)????hI??5~a??9@??.$~D4??????:?h?eD?9??pJ?~W??5F?O?] 
[l~p6?oA??û??,??#?'l?P???;?>???3?Ȯ0?r??5?nr	9??A???-???)dM?F??V)e??#Wu?l?G=j???j?uxM!bv??$???!I?_??{         ;  x?Eѽn?0??<E??/?J?A?nU?U??2D?з??	+??hY??z???zX??RV????֟??????i?_?rzc?ژ?????]?n??=??L???u?~G?P??.Z?r??2?STU?7⢪D???j?F?9)3k?d?M???????r?n(?Q?9??t??Gs????&]PZ??bʒcY???Q??	E?? g??x+??qFpХ?]?``?s5?	?>?٥?'??hT?j?#̈́!D???,??????-?w?2&??х)?!?խσ?ܨ?e5??/EQ??]z(         ?   x?m?M??0??)?@?ڦ?] ?޻???TE?T)???$.=??e
??5_o??Tx??×?p????C?R?@j?))???#<}?d??yO???k?M}???y???,?c?8?)??v0_l?.?`?ؖz??O???/?%?????0?zQ??v0?zQ?h??b8?p??4m8?0״??j?.8?p?w?12~??c?uo@?w?     