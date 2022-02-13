create table packet_telemetry (
     "id" bigserial not null,
     "packet_id" bigint not null,
     "station_id" bigint not null,
     "timestamp" bigint not null,
     "val1" real null,
     "val2" real null,
     "val3" real null,
     "val4" real null,
     "val5" real null,
     "bits" text null,
     "seq" int null,
     "station_telemetry_param_id" bigint null,
     "station_telemetry_unit_id" bigint null,
     "station_telemetry_eqns_id" bigint null,
     "station_telemetry_bits_id" bigint null,
     primary key (id),
     foreign key(station_id) references station(id),
     foreign key(station_telemetry_param_id) references station_telemetry_param(id),
     foreign key(station_telemetry_unit_id) references station_telemetry_unit(id),
     foreign key(station_telemetry_eqns_id) references station_telemetry_eqns(id),
     foreign key(station_telemetry_bits_id) references station_telemetry_bits(id)
);