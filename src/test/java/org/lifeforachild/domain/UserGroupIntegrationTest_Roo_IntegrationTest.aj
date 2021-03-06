// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.lifeforachild.domain;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.lifeforachild.domain.UserGroupDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserGroupIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UserGroupIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UserGroupIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: UserGroupIntegrationTest: @Transactional;
    
    @Autowired
    private UserGroupDataOnDemand UserGroupIntegrationTest.dod;
    
    @Test
    public void UserGroupIntegrationTest.testCountUserGroups() {
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", dod.getRandomUserGroup());
        long count = org.lifeforachild.domain.UserGroup.countUserGroups();
        org.junit.Assert.assertTrue("Counter for 'UserGroup' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UserGroupIntegrationTest.testFindUserGroup() {
        org.lifeforachild.domain.UserGroup obj = dod.getRandomUserGroup();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.UserGroup.findUserGroup(id);
        org.junit.Assert.assertNotNull("Find method for 'UserGroup' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'UserGroup' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void UserGroupIntegrationTest.testFindAllUserGroups() {
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", dod.getRandomUserGroup());
        long count = org.lifeforachild.domain.UserGroup.countUserGroups();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'UserGroup', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.lifeforachild.domain.UserGroup> result = org.lifeforachild.domain.UserGroup.findAllUserGroups();
        org.junit.Assert.assertNotNull("Find all method for 'UserGroup' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'UserGroup' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UserGroupIntegrationTest.testFindUserGroupEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", dod.getRandomUserGroup());
        long count = org.lifeforachild.domain.UserGroup.countUserGroups();
        if (count > 20) count = 20;
        java.util.List<org.lifeforachild.domain.UserGroup> result = org.lifeforachild.domain.UserGroup.findUserGroupEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'UserGroup' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'UserGroup' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UserGroupIntegrationTest.testFlush() {
        org.lifeforachild.domain.UserGroup obj = dod.getRandomUserGroup();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.UserGroup.findUserGroup(id);
        org.junit.Assert.assertNotNull("Find method for 'UserGroup' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUserGroup(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'UserGroup' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserGroupIntegrationTest.testMerge() {
        org.lifeforachild.domain.UserGroup obj = dod.getRandomUserGroup();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.UserGroup.findUserGroup(id);
        boolean modified =  dod.modifyUserGroup(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.merge();
        obj.flush();
        //org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'UserGroup' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserGroupIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", dod.getRandomUserGroup());
        org.lifeforachild.domain.UserGroup obj = dod.getNewTransientUserGroup(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'UserGroup' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'UserGroup' identifier to no longer be null", obj.getId());
    }
    
    //@Test
    public void UserGroupIntegrationTest.testRemove() {
        org.lifeforachild.domain.UserGroup obj = dod.getRandomUserGroup();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'UserGroup' failed to provide an identifier", id);
        obj = org.lifeforachild.domain.UserGroup.findUserGroup(id);
        obj.setIsDeleted(true);
        obj.persist();
        obj.flush();
        org.junit.Assert.assertTrue("Failed to remove 'UserGroup' with identifier '" + id + "'", org.lifeforachild.domain.UserGroup.findUserGroup(id).getIsDeleted());
    }
    
}
