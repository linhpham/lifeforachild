// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.lifeforachild.domain;

import java.lang.Boolean;
import java.lang.String;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.lifeforachild.domain.Permissions;
import org.lifeforachild.util.TestUtil;
import org.springframework.stereotype.Component;

privileged aspect PermissionsDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PermissionsDataOnDemand: @Component;
    
    private Random PermissionsDataOnDemand.rnd = new SecureRandom();
    
    private List<Permissions> PermissionsDataOnDemand.data;
    
    public Permissions PermissionsDataOnDemand.getNewTransientPermissions(int index) {
        Permissions obj = new Permissions();
        setDescription(obj, index);
        setIsDeleted(obj, index);
        setName(obj, index);
        return obj;
    }
    
    public void PermissionsDataOnDemand.setDescription(Permissions obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void PermissionsDataOnDemand.setIsDeleted(Permissions obj, int index) {
        Boolean isDeleted = Boolean.TRUE;
        obj.setIsDeleted(isDeleted);
    }
    
    public void PermissionsDataOnDemand.setName(Permissions obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public Permissions PermissionsDataOnDemand.getSpecificPermissions(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Permissions obj = data.get(index);
        return Permissions.findPermissions(obj.getId());
    }
    
    public Permissions PermissionsDataOnDemand.getRandomPermissions() {
        init();
        Permissions obj = data.get(rnd.nextInt(data.size()));
        return Permissions.findPermissions(obj.getId());
    }
    
    public boolean PermissionsDataOnDemand.modifyPermissions(Permissions obj) {
        return false;
    }
    
    public void PermissionsDataOnDemand.init() {
    	TestUtil.createAndSetTestUser();
        data = Permissions.findPermissionsEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Permissions' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<org.lifeforachild.domain.Permissions>();
        for (int i = 0; i < 10; i++) {
            Permissions obj = getNewTransientPermissions(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> it = e.getConstraintViolations().iterator(); it.hasNext();) {
                    ConstraintViolation<?> cv = it.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
