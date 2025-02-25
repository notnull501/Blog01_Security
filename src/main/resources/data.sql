INSERT INTO member (id, name) VALUES (1, '이름1')
INSERT INTO member (id, name) VALUES (2, '이름2')
INSERT INTO member (id, name) VALUES (3, '이름3')

-- INSERT INTO article (title, content) VALUES ('제목 1', '내용 1')
-- INSERT INTO article (title, content) VALUES ('제목 2', '내용 2')
-- INSERT INTO article (title, content) VALUES ('제목 3', '내용 3')

--2버전 : SYSDATE => NOW(), CURRENT_TIMESTAMP()
-- INSERT INTO article (title, content, created_at, updated_at) VALUES ('제목 1', '내용 1', NOW(), NOW())
-- INSERT INTO article (title, content, created_at, updated_at) VALUES ('제목 2', '내용 2', NOW(), NOW())
-- INSERT INTO article (title, content, created_at, updated_at) VALUES ('제목 3', '내용 3', NOW(), NOW())

-- 1버전이므로
INSERT INTO article (title, content, created_at, updated_at) VALUES ('제목 1', '내용 1', sysdate, sysdate)
INSERT INTO article (title, content, created_at, updated_at) VALUES ('제목 2', '내용 2', sysdate, sysdate)
INSERT INTO article (title, content, created_at, updated_at) VALUES ('제목 3', '내용 3', sysdate, sysdate)