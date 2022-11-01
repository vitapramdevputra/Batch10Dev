@isTest
public class DmlDemoTest {
    @isTest
    static void testDmlInsert1() {
        DmlDemo.dmlInsertDemo_stndObj1();
        //how to assert this?
            //soql.
        List<account> listAcc = [select id, name from account where name ='SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
}
