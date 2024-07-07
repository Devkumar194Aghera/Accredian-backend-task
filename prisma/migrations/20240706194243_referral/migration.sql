/*
  Warnings:

  - You are about to drop the column `Refferre_Email` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `Refferre_Name` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `Refferre_Phone` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `Refferrer_Email` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `Refferrer_Name` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `Refferrer_Phone` on the `referral` table. All the data in the column will be lost.
  - Added the required column `Referre_Email` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Referre_Name` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Referre_Phone` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Referrer_Email` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Referrer_Name` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Referrer_Phone` to the `Referral` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `referral` DROP COLUMN `Refferre_Email`,
    DROP COLUMN `Refferre_Name`,
    DROP COLUMN `Refferre_Phone`,
    DROP COLUMN `Refferrer_Email`,
    DROP COLUMN `Refferrer_Name`,
    DROP COLUMN `Refferrer_Phone`,
    ADD COLUMN `Referre_Email` VARCHAR(255) NOT NULL,
    ADD COLUMN `Referre_Name` VARCHAR(255) NOT NULL,
    ADD COLUMN `Referre_Phone` VARCHAR(255) NOT NULL,
    ADD COLUMN `Referrer_Email` VARCHAR(255) NOT NULL,
    ADD COLUMN `Referrer_Name` VARCHAR(255) NOT NULL,
    ADD COLUMN `Referrer_Phone` VARCHAR(255) NOT NULL;
