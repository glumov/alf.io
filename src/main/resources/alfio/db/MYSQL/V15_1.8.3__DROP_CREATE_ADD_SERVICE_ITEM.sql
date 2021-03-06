--
-- This file is part of alf.io.
--
-- alf.io is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- alf.io is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with alf.io.  If not, see <http://www.gnu.org/licenses/>.
--

drop table additional_service_item;

create table additional_service_item (
    id integer auto_increment PRIMARY KEY NOT NULL,
    uuid character(36) not null,
    creation timestamp not null,
    last_modified timestamp,
    tickets_reservation_uuid character(36),
    additional_service_id_fk integer NOT NULL,
    original_price_cts integer,
    paid_price_cts integer,
    status varchar(20),
    event_id_fk integer not null
) ENGINE=InnoDB CHARACTER SET=utf8 COLLATE utf8_bin;
alter table additional_service_item add FOREIGN KEY asi_as_fk (additional_service_id_fk) REFERENCES additional_service(id);
alter table additional_service_item add FOREIGN KEY asi_event_id_fk (event_id_fk) REFERENCES event(id);