-- MariaDB dump 10.17  Distrib 10.4.12-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: snsboard
-- ------------------------------------------------------
-- Server version	10.4.12-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bbs`
--

DROP TABLE IF EXISTS `bbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs` (
  `postID` int(11) NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(50) DEFAULT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `postContent` varchar(2048) DEFAULT NULL,
  `postAvailable` int(11) DEFAULT NULL,
  `postLike` int(11) DEFAULT 0,
  `postComment` int(12) DEFAULT 0,
  `fileName` varchar(500) DEFAULT NULL,
  `postVisit` int(11) DEFAULT 1,
  PRIMARY KEY (`postID`),
  KEY `userID` (`userID`),
  KEY `hellss` (`postLike`),
  KEY `fileName` (`fileName`),
  CONSTRAINT `bbs_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `bbs_ibfk_2` FOREIGN KEY (`fileName`) REFERENCES `file` (`fileName`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs`
--

LOCK TABLES `bbs` WRITE;
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
INSERT INTO `bbs` VALUES (1,'Hello this is INHA-PEDIA!','admin','2020-06-29 02:50:27','On This WebSite, You May publish any posts that are related to computer and science major bases.\r\nAnyone who pays $50 / month you will get privileged as Admin.\r\n\r\nDo NOT POST none-cse related posts',1,10,4,NULL,32),(2,'Do you Know GitHub?','admin','2020-06-29 20:28:08','GitHub, Inc. is a United States-based global company that provides hosting for software development version control using Git. \r\nIn 2018, it became a subsidiary of Microsoft for US$7.5 billion. It offers the distributed version control and \r\nsource code management (SCM) functionality of Git, plus its own features. \r\nIt provides access control and several collaboration features such as bug tracking, feature requests, task management, and wikis for every project.\r\n\r\nGitHub offers plans free of charge, and professional and enterprise accounts. \r\nFree GitHub accounts are commonly used to host open source projects. \r\nAs of January 2019, GitHub offers unlimited private repositories to all plans, including free accounts, but allowed\r\n only up to three collaborators per repository for free. \r\nStarting from April 15, 2020, the Free plan allows unlimited collaborators, but with the catch of 2,000 Actions minutes per month for private repositories. \r\nAs of January 2020, GitHub reports having over 40 million users and more than 100 million repositories \r\n(including at least 28 million public repositories), making it the largest host of source code in the world.\r\n\r\nGitHub is Really UseFule!',1,3,3,NULL,45),(3,'인하대학교','whwoals21','2020-06-29 15:39:48','1954년 우리나라의 공업 수준을 향상시키기 위하여 당시 대통령이던 이승만 박사의 발의로 세워진 인하공과대학이 전신이다. \r\n학교 설립에 필요한 재원은 하와이 교포 2세 교육을 위하여 1914년 이승만이 설립·운영하였던 한인기독학원을 처분한 대금, \r\n하와이 교포들의 성금, 국내 유지의 성금 및 국고 보조 등의 기금으로 충당하고, 인천시로부터 교지를 기증받았다. \r\n1954년 2월 재단법인 인하학원이 설립인가를 받아 4월 금속, 기계, 광산, 전기, 조선 및 화학공학 등 6개 학과로 개교했다. \r\n1958년 3월 대학원 설립인가를 받고 금속, 기계, 광산, 전기 및 화학공학 등 5개 학과에 석사학위 과정을 설치했다.\r\n[네이버 지식백과] 인하대학교 [Inha University, 仁荷大學校] (네이버 기관단체사전 : 학교)',1,28,4,NULL,57),(4,'HTML이란 무엇인가!!','tjdwls','2020-06-29 13:27:10','웹 문서를 만들기 위하여 사용하는 기본적인 웹 언어의 한 종류이다. 하이퍼텍스트를 작성하기 위해 개발되었다.\r\n인터넷 서비스의 하나인 월드 와이드 웹을 통해 볼 수 있는 문서를 만들 때 사용하는 웹 언어의 한 종류이다. 특히 하이퍼텍스트를 작성하기 위해 개발되었으며, 인터넷에서 웹을 통해 접근되는 대부분의 웹 페이지들은 HTML로 작성된다.\r\n[네이버 지식백과] HTML [Hypertext Markup Language] (두산백과)',1,5,3,NULL,14),(5,'JSP는 무엇인가! Java Server Page','2000won','2020-06-29 13:36:25','자바 서버 페이지(영어: JavaServer Pages, JSP)는 HTML내에 자바 코드를 삽입하여 웹 서버에서 동적으로 웹 페이지를 생성하여 웹 브라우저에 돌려주는 언어이다. Java EE 스펙 중 일부로 웹 애플리케이션 서버에서 동작한다.\r\n\r\n자바 서버 페이지는 실행시에는 자바 서블릿으로 변환된 후 실행되므로 서블릿과 거의 유사하다고 볼 수 있다. 하지만, 서블릿과는 달리 HTML 표준에 따라 작성되므로 웹 디자인하기에 편리하다. 1999년 썬 마이크로시스템즈에 의해 배포되었으며 이와 비슷한 구조로 PHP, ASP, ASP.NET 등이 있다.\r\n\r\n아파치 스트럿츠나 자카르타 프로젝트의 JSTL 등의 JSP 태그 라이브러리를 사용하는 경우에는 자바 코딩없이 태그만으로 간략히 기술이 가능하므로 생산성을 높일 수 있다.',1,10,2,NULL,26),(6,'OS (운영체제) - OS란 무엇인가','rkdwjdgns','2020-06-29 13:43:27','1. Operating System에는 특별한 정의가 없다.\r\n2. OS는 항상 수행되는 프로그램으로, 하드웨어를 관리하고 프로그램 수행을 제어해주는 프로그램이다.\r\n3. 다른 말로 Kernel이라고 부른다.\r\n\r\n- 하드웨어 관리 측면\r\n1. I/O device에 Access해준다.\r\n2. File에 Access 해준다.\r\n3. 통계자료를 보여준다.(작업 관리자)\r\n4. 하드웨어 접근 시 에러를 탐색해준다.\r\n\r\n- 프로그램 수행 측면\r\n1. 스케줄링\r\n2. 프로그램 수행 간 에러 발생시 에러 리포팅을 해준다.\r\n\r\nOS의 목적\r\n1. User program을 쉽게 사용할 수 있도록 해준다.\r\n2. System을 편리하게 사용할 수 있도록 해준다.\r\n3. 하드웨어를 효율적으로 관리할 수 있도록 해준다.',1,8,3,NULL,27),(7,'DB (데이터베이스) - Key란 무엇인가?','jeongminimouse','2020-06-29 13:48:26','슈퍼키\r\n(Super key)\r\n유일성을 만족하는 속성들의 집합. 이 키로 검색을 하면 유일한 튜플이 나와야 한다.\r\nex_학생 릴레이션에서 {학번, 이름}, {학번, 나이}, {학번, 이름, 나이, 학과} 등이 이에 속하지만 {학과}는 슈퍼키가 될 수 없다.\r\n\r\n후보키\r\n(Candidate key)\r\n슈퍼키 중에서 유일성을 만족시킬 수 있는 최소한의 집합을 말한다.\r\nex_학생 릴레이션에서 {학번}, {이름} 이 여기에 속한다.\r\n\r\n기본키\r\n(Primary key)\r\n후보키 중에서 기본적으로 사용하는 키를 말한다.\r\nex_학생 릴레이션에서 {학번}, {이름}이 후보키지만 {학번} 을 기본키로 사용하는것이 바람직한 선택이다. 기본키는 데이터베이스를 구축할 때 정책에 따라 다르게 선택될 수 있다.\r\n\r\n외래키\r\n(Foreign key)\r\n다른 릴레이션의 기본키를 참조하는 속성들의 부분집합.\r\n주문 릴레이션에서 {학번}, {번호}가 여기에 속한다.\r\n\r\n대리키\r\n(Alternate key)\r\n후보키가 둘 이상일 때 기본키로 선택되지 못한 키들. 보조키라고도 한다.\r\nex_학생 릴레이션에서 {학번}을 기본키로 선택했다면 {이름}이 여기에 속하게 된다.\r\n\r\n대체키\r\n(Surrogate key)\r\n자연적인 값이 아니라 데이터베이스를 만들기 위해 임의로 만들어낸 값들을 말한다.\r\nex_메뉴 릴레이션에서 {번호} 가 여기에 속한다.\r\n',1,15,3,NULL,38),(8,'OS (운영체제) - 프로세스와 스레드 차이 (Process vs. Thread)','whwoals21','2020-06-29 14:00:44','프로그램(Program) 이란 \r\n“어떤 작업을 위해 실행할 수 있는 파일”\r\n프로세스(Process) 란\r\n“컴퓨터에서 연속적으로 실행되고 있는 컴퓨터 프로그램”\r\n\r\n메모리에 올라와 실행되고 있는 프로그램의 인스턴스(독립적인 개체)\r\n운영체제로부터 시스템 자원을 할당받는 작업의 단위\r\n즉, 동적인 개념으로는 실행된 프로그램을 의미한다.\r\n\r\n프로세스는 각각 독립된 메모리 영역(Code, Data, Stack, Heap의 구조)을 할당받는다.\r\n기본적으로 프로세스당 최소 1개의 스레드(메인 스레드)를 가지고 있다.\r\n각 프로세스는 별도의 주소 공간에서 실행되며, 한 프로세스는 다른 프로세스의 변수나 자료구조에 접근할 수 없다.\r\n한 프로세스가 다른 프로세스의 자원에 접근하려면 프로세스 간의 통신(IPC, inter-process communication)을 사용해야 한다.\r\nEx. 파이프, 파일, 소켓 등을 이용한 통신 방법 이용\r\n\r\n스레드(Thread) 란\r\n“프로세스 내에서 실행되는 여러 흐름의 단위”\r\n프로세스의 특정한 수행 경로\r\n프로세스가 할당받은 자원을 이용하는 실행의 단위\r\n스레드는 프로세스 내에서 각각 Stack만 따로 할당받고 Code, Data, Heap 영역은 공유한다.\r\n스레드는 한 프로세스 내에서 동작되는 여러 실행의 흐름으로, 프로세스 내의 주소 공간이나 자원들(힙 공간 등)을 같은 프로세스 내에 스레드끼리 공유하면서 실행된다.\r\n같은 프로세스 안에 있는 여러 스레드들은 같은 힙 공간을 공유한다. 반면에 프로세스는 다른 프로세스의 메모리에 직접 접근할 수 없다.\r\n각각의 스레드는 별도의 레지스터와 스택을 갖고 있지만, 힙 메모리는 서로 읽고 쓸 수 있다.\r\n한 스레드가 프로세스 자원을 변경하면, 다른 이웃 스레드(sibling thread)도 그 변경 결과를 즉시 볼 수 있다.',1,12,5,NULL,32),(9,'DB (데이터베이스) - 정규화 (Normalization)','2000won','2020-06-29 14:32:49','삽입이상 (Insertion Anomaly), 갱신이상 (Update Anomaly), 삭제이상 (Deletion Anomaly) 설명\r\n함수적 종속성 (Functional Dependency) 에 대해 알아본다.\r\n\r\n데이터베이스를 잘못 설계하면 불필요한 데이터 중복으로 인한 공간낭비를 넘어 부작용을 초래할 수 있다. \r\n이러한 부작용을 이상(Anomaly) 이라고 하는데 이상 현상의 종류로 삽입이상, 갱신이상, 삭제이상이 있다.\r\n\r\n1차 정규형은 각 로우마다 컬럼의 값이 1개씩만 있어야 합니다. 이를 컬럼이 원자값(Atomic Value)를 갖는다고 합니다.\r\n\r\n2차 정규화부터가 본격적인 정규화의 시작이라고 볼 수 있습니다. 2차 정규형은 테이블의 모든 컬럼이 완전 함수적 종속을 만족하는 것입니다. \r\n이게 무슨 말이냐면 기본키중에 특정 컬럼에만 종속된 컬럼(부분적 종속)이 없어야 한다는 것입니다\r\n\r\n3차 정규형은 기본키를 제외한 속성들 간의 이행적 함수 종속이 없는 것 입니다. 풀어서 말하자면, 기본키 이외의 다른 컬럼이 그외 다른 컬럼을 결정할 수 없는 것입니다.\r\n3차 정규화는 2차정규화와 마찬가지로 테이블을 분리함으로써 해결할 수 있는데, 이렇게 두 개의 테이블로 나눔으로써 3차 정규형을 만족할 수 있습니다. \r\n이를 통해 데이터가 논리적인 단위(학생, 주소)로 분리될 수 있고, 데이터의 redundancy도 줄었음을 알 수 있습니다.\r\n\r\nBCNF는 (Boyce and Codd Normal Form) 3차 정규형을 조금 더 강화한 버전으로 볼 수 있습니다. \r\n이는 3차 정규형으로 해결할 수 없는 이상현상을 해결할 수 있습니다. \r\nBCNF란 3차정규형을 만족하면서 모든 결정자가 후보키 집합에 속한 정규형입니다.\r\n',1,17,2,NULL,56),(10,'알고리즘 - DFS란?','kooB','2020-06-29 14:39:47','그래프 탐색이란\r\n하나의 정점으로부터 시작하여 차례대로 모든 정점들을 한 번씩 방문하는 것\r\nEx) 특정 도시에서 다른 도시로 갈 수 있는지 없는지, 전자 회로에서 특정 단자와 단자가 서로 연결되어 있는지\r\n\r\n깊이 우선 탐색(DFS, Depth-First Search)\r\n깊이 우선 탐색이란\r\n루트 노드(혹은 다른 임의의 노드)에서 시작해서 다음 분기(branch)로 넘어가기 전에 해당 분기를 완벽하게 탐색하는 방법\r\n\r\n미로를 탐색할 때 한 방향으로 갈 수 있을 때까지 계속 가다가 더 이상 갈 수 없게 되면 다시 가장 \r\n가까운 갈림길로 돌아와서 이곳으로부터 다른 방향으로 다시 탐색을 진행하는 방법과 유사하다.\r\n즉, 넓게(wide) 탐색하기 전에 깊게(deep) 탐색하는 것이다.\r\n사용하는 경우: 모든 노드를 방문 하고자 하는 경우에 이 방법을 선택한다.\r\n깊이 우선 탐색(DFS)이 너비 우선 탐색(BFS)보다 좀 더 간단하다.\r\n단순 검색 속도 자체는 너비 우선 탐색(BFS)에 비해서 느리다.\r\n\r\n아래는 PseudoCode 입니다.\r\n\r\nvoid search(Node root) {\r\n  if (root == null) return;\r\n  // 1. root 노드 방문\r\n  visit(root);\r\n  root.visited = true; // 1-1. 방문한 노드를 표시\r\n  // 2. root 노드와 인접한 정점을 모두 방문\r\n  for each (Node n in root.adjacent) {\r\n    if (n.visited == false) { // 4. 방문하지 않은 정점을 찾는다.\r\n      search(n); // 3. root 노드와 인접한 정점 정점을 시작 정점으로 DFS를 시작\r\n    }\r\n  }\r\n}',1,6,2,NULL,30),(11,'알고리즘 - BFS란?','whwoals21','2020-06-29 14:45:06','그래프 탐색이란\r\n하나의 정점으로부터 시작하여 차례대로 모든 정점들을 한 번씩 방문하는 것\r\nEx) 특정 도시에서 다른 도시로 갈 수 있는지 없는지, 전자 회로에서 특정 단자와 단자가 서로 연결되어 있는지\r\n너비 우선 탐색(BFS, Breadth-First Search)\r\n너비 우선 탐색이란\r\n루트 노드(혹은 다른 임의의 노드)에서 시작해서 인접한 노드를 먼저 탐색하는 방법\r\n\r\n시작 정점으로부터 가까운 정점을 먼저 방문하고 멀리 떨어져 있는 정점을 나중에 방문하는 순회 방법이다.\r\n즉, 깊게(deep) 탐색하기 전에 넓게(wide) 탐색하는 것이다.\r\n사용하는 경우: 두 노드 사이의 최단 경로 혹은 임의의 경로를 찾고 싶을 때 이 방법을 선택한다.\r\nEx) 지구상에 존재하는 모든 친구 관계를 그래프로 표현한 후 Ash와 Vanessa 사이에 존재하는 경로를 찾는 경우\r\n깊이 우선 탐색의 경우 - 모든 친구 관계를 다 살펴봐야 할지도 모른다.\r\n너비 우선 탐색의 경우 - Ash와 가까운 관계부터 탐색\r\n너비 우선 탐색(BFS)이 깊이 우선 탐색(DFS)보다 좀 더 복잡하다.\r\n\r\nBFS는 방문한 노드들을 차례로 저장한 후 꺼낼 수 있는 자료 구조인 큐(Queue)를 사용한다.\r\n즉, 선입선출(FIFO) 원칙으로 탐색\r\n일반적으로 큐를 이용해서 반복적 형태로 구현하는 것이 가장 잘 동작한다.\r\n\r\nBFS의 PseudoCode\r\nvoid search(Node root) {\r\n  Queue queue = new Queue();\r\n  root.marked = true; // (방문한 노드 체크)\r\n  queue.enqueue(root); // 1-1. 큐의 끝에 추가\r\n\r\n  // 3. 큐가 소진될 때까지 계속한다.\r\n  while (!queue.isEmpty()) {\r\n    Node r = queue.dequeue(); // 큐의 앞에서 노드 추출\r\n    visit(r); // 2-1. 큐에서 추출한 노드 방문\r\n    // 2-2. 큐에서 꺼낸 노드와 인접한 노드들을 모두 차례로 방문한다.\r\n    foreach (Node n in r.adjacent) {\r\n      if (n.marked == false) {\r\n        n.marked = true; // (방문한 노드 체크)\r\n        queue.enqueue(n); // 2-3. 큐의 끝에 추가\r\n      }\r\n    }\r\n  }\r\n}',1,14,3,NULL,31),(12,'알고리즘 - 위상정렬 (Topological Sort)','epicurean21','2020-06-29 14:53:17','위상 정렬(Topological Sort)이란\r\n어떤 일을 하는 순서를 찾는 알고리즘이다.\r\n\r\n즉, 방향 그래프에 존재하는 각 정점들의 선행 순서를 위배하지 않으면서 모든 정점을 나열하는 것\r\n\r\n하나의 방향 그래프에는 여러 위상 정렬이 가능하다.\r\n위상 정렬의 과정에서 선택되는 정점의 순서를 위상 순서(Topological Order)라 한다.\r\n위상 정렬의 과정에서 그래프에 남아 있는 정점 중에 진입 차수가 0인 정점이 없다면, 위상 정렬 알고리즘은 중단되고 \r\n이러한 그래프로 표현된 문제는 실행이 불가능한 문제가 된다.\r\n\r\n진입 차수가 0인 정점(즉, 들어오는 간선의 수가 0)을 선택\r\n진입 차수가 0인 정점이 여러 개 존재할 경우 어느 정점을 선택해도 무방하다.\r\n초기에 간선의 수가 0인 모든 정점을 큐에 삽입\r\n선택된 정점과 여기에 부속된 모든 간선을 삭제\r\n선택된 정점을 큐에서 삭제\r\n선택된 정점에 부속된 모든 간선에 대해 간선의 수를 감소\r\n위의 과정을 반복해서 모든 정점이 선택, 삭제되면 알고리즘 종료\r\n\r\n위상 정렬(Topological Sort)과 관련된 예시\r\n각각의 작업이 완료되어야만 끝나는 프로젝트\r\n선수 과목\r\n큐를 이용한 위상 정렬\r\n줄 세우기-백준2252번\r\n우선순위 큐를 이용한 위상 정렬\r\n문제집-백준1766번\r\n여러 위상 순서 중 가장 짧게 걸리는 위상 정렬 방법 구하기\r\n작업-백준2056번\r\n게임 개발-백준1516번\r\n\r\nhttps://gmlwjd9405.github.io/2018/08/27/algorithm-topological-sort.html',1,8,1,NULL,17),(13,'OS (운영체제) - Disk Scheduling','tjdwls','2020-06-29 20:26:09','FCFS\r\n- Head의 움직임을 줄여 Seek Time을 최소화하자!\r\n- First-Come First-Serve의 약자로, 먼저 도착한 Sector부터 순차적으로 할당된다.\r\n- Seek Time의 Overhead가 너무 커진다.\r\n\r\nSSTF\r\n- Shortest Seek Time First, 현 위치에서 가장 적은 Seek Time이 필요한 Sector를 찾아간다.\r\n- 최적이라고 생각할 수 있지만, 최적이 아니며, Starvation의 발생의 여지가 있다.\r\n[출처] Operating System) Disk Scheduling|작성자 매브레이커\r\n\r\nSCAN(Elevator Algorithm)\r\n- 0번 Cylinder 부터 마지막 Cylinder 까지 왔다 갔다 반복하는 방식이다.\r\n- Seek Time을 줄일 수 있으면서, Starvation 문제까지 해결하였다.\r\n\r\nC-SCAN\r\n- SCAN에서 단방향만 지원하는 방식이다.\r\n\r\nLook Algorithm\r\n- SCAN 을 보완한 Algorithm\r\n- 0번 Cylinder 부터 마지막 Cylinder 까지 갈 필요 없이, 최소 Cylinder와 최대 Cylinder 사이만 왔다갔다 하자는 알고리즘으로, Seek Time을 더욱 줄이면서 Starvation을 해결한다.\r\n- 이론적인 Algorithm으로, 실제 구현은 어렵다.\r\n- 마찬가지로 Look Algorithm의 단방향 버전인 C-LOOK이 존재한다.\r\n[출처] Operating System) Disk Scheduling|작성자 매브레이커\r\n',1,5,2,NULL,27),(14,'jspjsp','whwoals21','2020-06-29 20:38:32','Java[1]를 이용한 서버 사이드 스크립트 언어. Java Server Pages의 약자이며, Java의 점유율을 대폭 상승시킨 1등공신이다. 같은 부류에 속하는 것으로 PHP, ASP가 있다. 확장자는 당연히 .jsp를 사용. ASP와 마찬가지로 <% ... %>로 둘러싸인 스크립트 영역이 있으며, 실행시에 javax.servlet.http.HttpServlet 클래스를 상속받은 Java 소스 코드로 변환한 다음[2] 컴파일되어 실행된다. 이 JSP 파일을 Servlet 클래스로 변환하고 실행시켜 주는 역할을 하는 프로그램은 서블릿 컨테이너라고 부른다. 대표적인 것으로 오픈 소스 웹 컨테이너인 톰캣이 있다. 하나의 JSP 페이지가 하나의 Java 클래스이기 때문에 모든 Java 라이브러리를 끌어다 쓸 수 있다.\r\n\r\nPHP와 비교해서 JSP는 안정적이고, 유지보수가 쉽다. 반면 PHP는 개발 속도가 압도적으로 빠르다. 그런데 2010년대의 웹 환경은 JSP의 경직된 구조를 받아들이지 못해 빠르게 인기가 식고 있다. 요즘 트렌드인 API 주도형 사이트 구축과 SPA(Single Page Application)는 JSP와 정말 궁합이 안 맞는다. 대기업이나 금융권, 관공서 등 규모가 크고 안정적인 서비스가 중요한 곳에서는 여전히 수요가 있지만, 이러한 곳이 아니라면 서비스 내용 대비 쓸데없이 무겁고 느린 JSP는 점점 메리트가 떨어져 가고 있다. 과거에 쓰였던 EJB는 군더더기 코드가 많고, EJB를 로딩하는 데 꽤나 시간이 걸리며[4], 속도를 위해 Local Bean으로만 줄창 쓰다가 지금은 거의 사장된 상태이다.\r\n\r\nASP.NET도 비슷한 사정으로 점유율이 하락 중. 사용하는 방식이 많이 변했지만 PHP가 아직 웹 쪽에서는 선방 중이고, 신흥강자로 Node.js와 Go가 떠오르고 있다. 또한 Ruby on Rails의 성공도 JSP의 앞날을 가로막는 존재이다. Python의 Django와 Flask 웹 프레임워크도 편의성과 고성능, 그리고 압도적인 생산성과 가파른 학습 곡선으로 JSP를 위협하고 있다.\r\n탄은 측면부는 구리로 도금해놓지만 탄두의 최전방부에는 내부의 부드러운 탄심(주로 납)을 노출 시키는 형태의 탄환. 할로 포인트(JHP)와 마찬가지로 목표에 명중할 때 탄두의 형상이 크게 변화되어 관통력이 낮아지고 대인 저지력이 높아지는 효과가 있다. 특히 탄두가 변형하면서 전체적인 외경이 늘어나고 탄두 내부의 납이 유출',0,0,0,NULL,3),(15,'test','whwoals21','2020-06-29 22:35:09','es',0,0,0,NULL,2),(16,'6월 29일 10시 35분 Test','whwoals21','2020-06-29 22:36:41','6월 29일 10시 35분 TEST 내용\r\n\r\nInternet Programming Final Project\r\n\r\n12161658\r\n조재민',0,0,0,NULL,2),(17,'6월 29일 10시 36분 Test','whwoals21','2020-06-29 22:37:30','6월 29일 10시 36분 TEST 내용\r\n\r\nInternet Programming Final Project\r\n\r\n12161658\r\n조재민',0,0,0,NULL,2);
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `postID` int(11) DEFAULT NULL,
  `commentID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) DEFAULT NULL,
  `commentContent` varchar(512) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `commentType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`commentID`),
  KEY `postID` (`postID`),
  KEY `userID` (`userID`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `bbs` (`postID`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'admin','Welcome to InhaPEDIA','2020-06-29 02:52:15','like'),(2,2,'whwoals21','Git Hub 너무 재밌어요 ! ','2020-06-29 03:04:49','surprise'),(3,3,'epicurean21','인하대학교 너무 좋아요 ','2020-06-29 04:22:18','sad'),(2,4,'admin','좋은 정보 감사합니다 ~~ ^^ ','2020-06-29 13:24:25','like'),(4,5,'whwoals21','html 너무 재밌어요! ','2020-06-29 13:30:31','like'),(3,6,'whwoals21','인하대학교 짱짱맨 ','2020-06-29 13:30:48','like'),(4,7,'2000won','HTML 너무 어려워요 ','2020-06-29 13:33:53','sad'),(2,8,'2000won','I KNOW GITHUB!','2020-06-29 13:34:02','surprise'),(1,9,'2000won','안녕하세요 2000원입니다 ^^','2020-06-29 13:34:18','like'),(5,10,'2000won','JSP 를 잘할려면 머리가 좋아야해요 :) ','2020-06-29 13:36:54','like'),(5,11,'tjdwls','JSP에 대한 정보가 부족해요 더 자세히 알려주세요 ','2020-06-29 13:37:17','angry'),(3,12,'tjdwls','인하대학교 == THE BEST UNIVERSITY OF COLLEGE IN THE WORD','2020-06-29 13:38:13','like'),(1,13,'rkdwjdgns','반갑습니다 :)','2020-06-29 13:39:24','like'),(4,14,'rkdwjdgns','좋은정보 감사합니다 ^^','2020-06-29 13:43:53','like'),(6,15,'jeongminimouse','OS는 매우 중요하군요 !','2020-06-29 13:45:25','like'),(7,16,'kooB','DB Key부분이 헷갈렸는데 정보 감사합니다 !!!','2020-06-29 13:53:01','like'),(7,17,'whwoals21','Jeongminimouse님 DB정보 감사합니다 :) Integrity Constraints에 대한 글도 부탁드려요 ','2020-06-29 13:55:35','like'),(6,18,'admin','좋은 정보 감사합니다 근데 이미 다 아는거네요 껄껄','2020-06-29 13:58:05','sad'),(8,19,'jeongminimouse','Process와 Thread가 이런차이가 있었군요 !!','2020-06-29 14:03:19','surprise'),(1,20,'jeongminimouse','Hello  :)','2020-06-29 14:03:41','like'),(9,21,'2000won','DB 정규화는 매우매우 중요합니다 ^^ ','2020-06-29 14:34:10','sad'),(9,22,'epicurean21','DB 정규화 정보 감사드립니당','2020-06-29 14:34:46','like'),(7,23,'epicurean21','그럼 모든 Primary Key, Candidate Key는 Super Key 인건가요 ? ','2020-06-29 14:36:13','like'),(8,24,'epicurean21','OS 너무 복잡하네요 ','2020-06-29 14:36:33','sad'),(8,25,'kooB','이글덕에 이해가 됐습니다. ','2020-06-29 14:37:51','like'),(10,26,'whwoals21','DFS감사합니다 ~:!! BFS도 알려주세요 ','2020-06-29 14:40:19','like'),(11,27,'rkdwjdgns','DFS보다 좀 어렵네요 ㅠㅠ 어떡하죠\r\n','2020-06-29 14:48:14','sad'),(11,28,'epicurean21','rkdwjdgns님 baekjoon 사이트에서 BFS 관련문제 풀어보세요 ! ','2020-06-29 14:49:21','like'),(12,29,'jeongminimouse','위상정렬 알고리즘 재밌네요 ','2020-06-29 14:53:55','like'),(10,30,'jeongminimouse','Depth First Search ','2020-06-29 14:54:23','angry'),(3,31,'jeongminimouse','인하대학교 화이팅','2020-06-29 14:54:44','like'),(11,32,'jeongminimouse','재밌네요 !! ','2020-06-29 14:56:57','like'),(6,33,'rkdwjdgns','좋아요좀 눌러주세요 ㅠ','2020-06-29 15:34:18','sad'),(13,34,'tjdwls','참고로 C-look 알고리즘도 있습니다 ^^ ','2020-06-29 15:53:14','like'),(13,35,'whwoals21','정보 감사합니다 ~','2020-06-29 15:53:34','like'),(8,36,'whwoals21','다들 열공하세요 ~ ','2020-06-29 15:55:12','like'),(8,37,'tjdwls','쓰레드 너무 어려워요 !! ','2020-06-29 20:25:09','angry');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `fileName` varchar(500) NOT NULL,
  `fileNameTrue` varchar(500) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL,
  PRIMARY KEY (`fileName`),
  KEY `postID` (`postID`),
  CONSTRAINT `file_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `bbs` (`postID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES ('1NF.png','1NF.png',9),('2NF.jpg','2NF.jpg',9),('3NF.jpg','3NF.jpg',9),('888633.jpg','888633.jpg',16),('BCNF.png','BCNF.png',9),('BFS.png','BFS.png',11),('cscan.jpg','cscan.jpg',13),('DBKEY.png','DBKEY.png',7),('DFS.png','DFS.png',10),('fcfs.jpg','fcfs.jpg',13),('github.png','github.png',2),('html.png','html.png',4),('inha_uni.png','inha_uni.png',3),('ITSDB.png','ITSDB.png',7),('jsp.png','jsp.png',5),('jsp2.png','jsp2.png',5),('jspsp.png','jspsp.png',5),('KEYS.png','KEYS.png',7),('logo.jpg','logo.jpg',3),('look.jpg','look.jpg',13),('main.PNG','main.PNG',15),('OS.jpg','OS.jpg',6),('OS21.png','OS21.png',6),('Process.png','Process.png',8),('sstf.jpg','sstf.jpg',13),('Thread.png','Thread.png',8),('Topological Sort.png','Topological Sort.png',12),('weSangSort.png','weSangSort.png',12);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` varchar(20) NOT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userGender` varchar(20) DEFAULT NULL,
  `userSchool` varchar(30) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2000won','dlcjddnjs','이청원','남자','원세대학교','2000@2000.com'),('admin','1234','admin','남자','인하대학교','admin@admin.com'),('epicurean21','epicurean1!','아무개','남자','서울대학교','seoul@inha.edu'),('gmlwn','gmlwn','최희주','여자','김일성대학교','gmlwn@naver.com'),('jeongminimouse','tjwjdals','서정민','여자','홍익대학교','tjwjdals@hongik.edu'),('kooB','rnqudwh','구병조','여자','포항바르셀로나대학교','barcelona@pohang.com'),('rkdwjdgns','rkdwjdgns','강정훈','남자','연세대학교','kang@inha.ac.kr'),('tjdwls','tjdwls','전성진','여자','대구프린스턴대학교','prinston@uni.org'),('whwoals21','whwoals1','조재민','남자','MIT','jm_company@naver.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-01 20:05:48
