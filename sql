

CREATE TABLE public.categories
(
  category_id character varying(30) NOT NULL,
  category_name character varying(30) NOT NULL,
  CONSTRAINT categories_pkey PRIMARY KEY (category_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.categories
  OWNER TO postgres;


CREATE TABLE public.items
(
  item_id integer NOT NULL DEFAULT nextval('items_item_id_seq'::regclass),
  item_name character varying(30) NOT NULL,
  price money NOT NULL,
  category_id character varying(30),
  CONSTRAINT items_pkey PRIMARY KEY (item_id),
  CONSTRAINT items_category_id_fkey FOREIGN KEY (category_id)
      REFERENCES public.categories (category_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.items
  OWNER TO postgres;
  -- Table: public.order_details

-- DROP TABLE public.order_details;

CREATE TABLE public.order_details
(
  order_details_id integer NOT NULL DEFAULT nextval('order_details_order_details_id_seq'::regclass),
  item_id integer NOT NULL DEFAULT nextval('order_details_item_id_seq'::regclass),
  quantity integer NOT NULL,
  discount integer,
  order_status character varying(30),
  CONSTRAINT order_details_pkey PRIMARY KEY (order_details_id),
  CONSTRAINT order_details_item_id_fkey FOREIGN KEY (item_id)
      REFERENCES public.items (item_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.order_details
  OWNER TO postgres;


-- Table: public.users

-- DROP TABLE public.users;

CREATE TABLE public.users
(
  user_id integer NOT NULL DEFAULT nextval('users_user_id_seq'::regclass),
  fname character varying(30) NOT NULL,
  lname character varying(20),
  emailid character varying(50) NOT NULL,
  password character varying(200) NOT NULL,
  mobilenumber character varying(50) NOT NULL,
  address character varying(500),
  role character varying(30) NOT NULL,
  CONSTRAINT users_pkey PRIMARY KEY (emailid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.users
  OWNER TO postgres;
