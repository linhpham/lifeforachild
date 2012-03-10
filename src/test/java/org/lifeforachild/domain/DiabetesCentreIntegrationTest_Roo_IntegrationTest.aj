// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.lifeforachild.domain;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.lifeforachild.domain.DiabetesCentreDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DiabetesCentreIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DiabetesCentreIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DiabetesCentreIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: DiabetesCentreIntegrationTest: @Transactional;
    
    @Autowired
    private DiabetesCentreDataOnDemand DiabetesCentreIntegrationTest.dod;
    
    @Test
    public void DiabetesCentreIntegrationTest.testCountDiabetesCentres() {
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", dod.getRandomDiabetesCentre());
        long count = org.lifeforachild.domain.DiabetesCentre.countDiabetesCentres();
        org.junit.Assert.assertTrue("Counter for 'DiabetesCentre' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DiabetesCentreIntegrationTest.testFindDiabetesCentre() {
        org.lifeforachild.domain.DiabetesCentre obj = dod.getRandomDiabetesCentre();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.DiabetesCentre.findDiabetesCentre(id);
        org.junit.Assert.assertNotNull("Find method for 'DiabetesCentre' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'DiabetesCentre' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DiabetesCentreIntegrationTest.testFindAllDiabetesCentres() {
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", dod.getRandomDiabetesCentre());
        long count = org.lifeforachild.domain.DiabetesCentre.countDiabetesCentres();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'DiabetesCentre', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.lifeforachild.domain.DiabetesCentre> result = org.lifeforachild.domain.DiabetesCentre.findAllDiabetesCentres();
        org.junit.Assert.assertNotNull("Find all method for 'DiabetesCentre' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'DiabetesCentre' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DiabetesCentreIntegrationTest.testFindDiabetesCentreEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", dod.getRandomDiabetesCentre());
        long count = org.lifeforachild.domain.DiabetesCentre.countDiabetesCentres();
        if (count > 20) count = 20;
        java.util.List<org.lifeforachild.domain.DiabetesCentre> result = org.lifeforachild.domain.DiabetesCentre.findDiabetesCentreEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'DiabetesCentre' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'DiabetesCentre' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DiabetesCentreIntegrationTest.testFlush() {
        org.lifeforachild.domain.DiabetesCentre obj = dod.getRandomDiabetesCentre();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.DiabetesCentre.findDiabetesCentre(id);
        org.junit.Assert.assertNotNull("Find method for 'DiabetesCentre' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDiabetesCentre(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'DiabetesCentre' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DiabetesCentreIntegrationTest.testMerge() {
        org.lifeforachild.domain.DiabetesCentre obj = dod.getRandomDiabetesCentre();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.DiabetesCentre.findDiabetesCentre(id);
        boolean modified =  dod.modifyDiabetesCentre(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.merge();
        obj.flush();
        //org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'DiabetesCentre' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DiabetesCentreIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", dod.getRandomDiabetesCentre());
        org.lifeforachild.domain.DiabetesCentre obj = dod.getNewTransientDiabetesCentre(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'DiabetesCentre' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'DiabetesCentre' identifier to no longer be null", obj.getId());
    }
    
    //@Test
    public void DiabetesCentreIntegrationTest.testRemove() {
        org.lifeforachild.domain.DiabetesCentre obj = dod.getRandomDiabetesCentre();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DiabetesCentre' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.DiabetesCentre.findDiabetesCentre(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'DiabetesCentre' with identifier '" + id + "'", org.lifeforachild.domain.DiabetesCentre.findDiabetesCentre(id));
    }
    
}
