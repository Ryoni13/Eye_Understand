create table airtime (
start_place number(10) not null,
end_place number(10) not null,
parttime varchar2(100) not null,
bigo varchar2(100) not null
)

select * from eyemember
select * from airtime

insert into airtime values(0, 1, '7:00, 8:00, 13:00, 17:00', '출발지 광주 : 도착지 서울');

insert into airtime values(0, 2, '7:10, 8:10, 13:10, 17:10', '출발지 광주 : 도착지 부산');

insert into airtime values(0, 3, '7:11, 8:11, 13:11, 17:11', '출발지 광주 : 도착지 제주');

insert into airtime values(1, 0, '7:12, 8:12, 13:12, 17:12', '출발지 서울 : 도착지 광주');

insert into airtime values(1, 2, '7:13, 8:13, 13:13, 17:13', '출발지 서울 : 도착지 부산');

insert into airtime values(1, 3, '7:14, 8:14, 13:14, 17:14', '출발지 서울 : 도착지 제주');

insert into airtime values(2, 0, '7:15, 8:15, 13:15, 17:15', '출발지 부산 : 도착지 광주');

insert into airtime values(2, 1, '7:16, 8:16, 13:16, 17:16', '출발지 부산 : 도착지 서울');

insert into airtime values(2, 3, '7:17, 8:17, 13:17, 17:17', '출발지 부산 : 도착지 제주');

insert into airtime values(3, 0, '7:18, 8:18, 13:18, 17:18', '출발지 제주 : 도착지 광주');

insert into airtime values(3, 1, '7:19, 8:19, 13:19, 17:19', '출발지 제주 : 도착지 서울');

insert into airtime values(3, 2, '7:20, 8:20, 13:20, 17:20', '출발지 제주 : 도착지 부산');