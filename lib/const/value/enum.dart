enum UserType { company, domain, admin }

enum CompanyType { headOffice, topDistributor, distributor, agency }

enum BankName {
  kb,
  woori,
  shinhan,
  hana,
  sc,
  citi,
  daegu,
  gwangju,
  busan,
  gyeongnam,
  jeonbuk,
  jeju,
  nonghyup,
  suhyup, //수협은행
  sanup, //한국산업은행
  ibk, //기업은행
  koreaexim, //수출입은행
  shinhyup, //신협은행
  post, //우체국은행
  mg, //새마을금고
  sanlim, //산림조합
  sbi, //저축은행
  hsbc, //HSBS은행
  kakao, //카카오뱅크
  toss, //토스뱅크
  k, //k뱅크
}

enum LevelType {
  level1,
  level2,
  level3,
  level4,
}

enum TransType {
  domainWithdrawal,
  domainCharge,
  companyWithdrawal,
}

enum TransStatus {
  pending,
  approve,
  decline,
}
