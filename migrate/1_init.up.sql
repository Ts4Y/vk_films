create table actors(
    id serial primary key,
    name varchar(100) not null,
    gender varchar(10) not null,
    date_of_birth date not null
);

insert into
    actors(name, gender, date_of_birth)
values
    ('Дуэйн Джонсон', 'Мужчина', '1972-05-02'),
    ('Скарлетт Йоханссон', 'Женщина', '1984-11-22'),
    ('Натали Портман', 'Женщина', '1981-06-09'),
    ('Юэн МакГрегор', 'Мужчина', '1971-03-31'),
    ('Сэмюэл Л.Джексон', 'Мужчина', '1948-12-21'),
    ('Крис Эванс', 'Мужчина', '1981-06-13'),
    ('Крис Хемсворт', 'Мужчина', '1983-08-11');

create table films(
    id serial primary key,
    name varchar(150) not null,
    description varchar(1000) not null,
    release_date date not null,
    rating numeric(2, 1) not null
);

insert into
    films(name, description, release_date, rating)
values
    (
        'Джуманджи: Новый уровень',
        'Пытаясь спасти Спенсера, снова попавшего в игру, туда же отправляются и остальные. К их удивлению, правила Джуманджи изменились, и более того - на этот раз в игру затянуло дедулю Спенсера и его престарелого друга Майло. Чтобы выполнить задания и вернуться домой, друзьям предстоит отправиться в путешествие по ранее неизведанным и таинственным уголкам Джуманджи – от засушливой пустыни до заснеженных гор.',
        '2019-12-04',
        '6.6'
    ),
    (
        'Геракл',
        'Более тысячи лет назад измученная душа скиталась по Земле, полубог, получеловек - Геракл - могучий сын царя богов Зевса, совершив все 12 подвигов, потерял семью и теперь находит утешение только в кровавых битвах.

За эти годы он собирает вокруг себя шестерых таких же потерянных воинов, единственным смыслом жизни для которых стали сражения и присутствие смертельной опасности. Эти мужчины и женщина никогда не задают вопрос, где, почему или с кем они идут сражаться; только, сколько им заплатят. Зная это, фракийский царь Котис нанимает этих воинов, чтобы они обучили его солдат и сделали из них самую сильную и великую армию всех времен.',
        '2014-07-23',
        '6.0'
    ),
    (
        'Мстители: Финал',
        'Оставшиеся в живых члены команды Мстителей и их союзники должны разработать новый план, который поможет противостоять разрушительным действиям могущественного титана Таноса. После наиболее масштабной и трагической битвы в истории они не могут допустить ошибку.',
        '2019-04-29',
        '7.9'
    ),
    (
        'Мстители: Война бесконечности',
        'Пока Мстители и их союзники продолжают защищать мир от различных опасностей, с которыми не смог бы справиться один супергерой, новая угроза возникает из космоса: Танос. Межгалактический тиран преследует цель собрать все шесть Камней Бесконечности - артефакты невероятной силы, с помощью которых можно менять реальность по своему желанию. Всё, с чем Мстители сталкивались ранее, вело к этому моменту – судьба Земли никогда ещё не была столь неопределённой.',
        '2018-05-03',
        '8.1'
    ),
    (
        'Звёздные войны: Эпизод 1 — Скрытая угроза',
        'Мирная и процветающая планета Набу. Торговая федерация, не желая платить налоги, вступает в прямой конфликт с королевой Амидалой, правящей на планете, что приводит к войне. На стороне королевы и республики в ней участвуют два рыцаря-джедая: учитель и ученик, Квай-Гон-Джин и Оби-Ван Кеноби...',
        '1999-05-16',
        '7.9'
    );

create table films_list (
    actor_id integer references actors(id),
    film_id integer references films(id),
    constraint unique_actor_film unique (actor_id, film_id)
);

insert into
    films_list(actor_id, film_id)
values
(1, 1),
(1, 2),
(2, 3),
(3, 5),
(4, 5),
(5, 4),
(5, 5),
(6, 3),
(6, 4),
(7, 3),
(7, 4);