create table order_location
(
    id        bigint      not null AUTO_INCREMENT
        primary key,
    date      datetime(6) null,
    latitude  double      null,
    longitude double      null
);
create table orders
(
    id                      bigint not null AUTO_INCREMENT
        primary key,
    operator_id             bigint not null,
    end_order_location_id   bigint null,
    start_order_location_id bigint null,
    constraint FK_end_order_id
        foreign key (end_order_location_id) references order_location (id),
    constraint FK_start_order_id
        foreign key (start_order_location_id) references order_location (id)
);
create table orders_assists
(
    order_id   bigint not null,
    assists_id bigint not null,
    constraint FK_assist_id_orders_assists
        foreign key (assists_id) references assistance (id),
    constraint FK_orders_id_orders_assists
        foreign key (order_id) references orders (id)
);

create index FK1akhrl2x32yvxo2ijmb5ksjb0
    on orders_assists (order_id);

create index FKacj1ecadqrc20chrl86ndyubd
    on orders_assists (assists_id);

