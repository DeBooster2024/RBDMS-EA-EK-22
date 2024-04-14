﻿use WebStor

/*
Завдання 1
Напишіть запит, який поверне список працівників старше 45 років.
- Використовується таблиця [dbo].[SALESREPS]
- Результуючий набір даних містить:
ідентифікатор працівника, ім'я працівника, вік, посаду
- Відсортуйте результуючий набір даних за віком (за спаданням)
*/

Select [EMPL_NUM]
 , [NAME]
 , [AGE]
 , [TITLE]
 from [dbo].[SALESREPS]
 where age > 45
 order by age desc;
 
 /*
 Завдання 2
Напишіть запит, який поверне список унікальних комбінацій значень
ідентифікатора виробника (MFR) та ідентифікатора товару (PRODUCT). Враховуйте тільки
замовлення за 2008 рік.
- Використовується таблиця [dbo].[ORDERS]
- Задійте оператор DISTINCT
- Результуючий набір даних містить: ідентифікатор виробника, ідентифікатор товару
 */

 Select distinct
 [MFR]
  , [PRODUCT]
  from [dbo].[ORDERS]
  where ORDER_DATE between '20080101' and '20081231'

 /*
 Завдання 3
 Напишіть запит, який поверне ідентифікатор працівника ([REP]) з найбільшою кількістю проведених замовлень.
 Враховуйте можливість того, що одразу кілька працівників можуть мати однакову кількість проведених замовлень.
 Враховуйте тільки замовлення за 2008 рік.
 - Використовується таблиця [dbo].[ORDERS]
 - Задійте агрегатну функцію COUNT
 - Задійте оператор WITH TIES
 - Результуючий набір даних містить: Ідентифікатор працівника, кількість проведених замовлень
 */
  Select top 1 with ties [REP],
   count (*) as ORDERCOUNT
   from [dbo].[ORDERS]
    where ORDER_DATE between '20080101' and '20081231'
	GROUP BY [REP]
	order by [ORDERCOUNT] desc
	;