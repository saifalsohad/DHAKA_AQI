PGDMP         #                z         	   dhaka_aqi    14.1    14.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    118572 	   dhaka_aqi    DATABASE     m   CREATE DATABASE dhaka_aqi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE dhaka_aqi;
                postgres    false            �            1259    118764    aqi_tab1    TABLE     X   CREATE TABLE public.aqi_tab1 (
    date timestamp without time zone,
    aqi integer
);
    DROP TABLE public.aqi_tab1;
       public         heap    postgres    false            �          0    118764    aqi_tab1 
   TABLE DATA           -   COPY public.aqi_tab1 (date, aqi) FROM stdin;
    public          postgres    false    211   �       �   �  x�͖[N�0E��*fE��p�Z��:h���(-��!��(J��_������t����������Ι�;��|�o����N�͛Ǣ6��U�;��y	S�?K9;�a�j�����Sz����3�h���U?����R�W��:N�x��y��+��q���N��x:У�y�k[`=T��L��)�q�<�5�Ц����]���_F>���:��w��}��k5�C���}�<p���:�+�@�!�F�<�5$Nȵ�0�g��Bp�Z!ps\!y�	O�K8df�2U��5��W�A�3�E���*�cM�k��q��8Fhp�֜�8��o���0ϰ�al�8}w���戣;:�EPL9��3n����38�x�j�q͸�{4�J�`�q�w;>Z͌������O���x����@�%^�+����/v
��	W�a1�4v\ߕ��MP�W�I���8��GX�$V�7��ns�竬��ה���eY> F��c     