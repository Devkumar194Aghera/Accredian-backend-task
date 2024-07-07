-- CreateTable
CREATE TABLE `Referral` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `Refferrer_Name` VARCHAR(255) NOT NULL,
    `Refferrer_Email` VARCHAR(255) NOT NULL,
    `Refferrer_Phone` VARCHAR(255) NOT NULL,
    `Refferre_Name` VARCHAR(255) NOT NULL,
    `Refferre_Email` VARCHAR(255) NOT NULL,
    `Refferre_Phone` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
