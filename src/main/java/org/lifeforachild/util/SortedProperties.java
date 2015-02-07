package org.lifeforachild.Util;

import java.util.Collections;
import java.util.Enumeration;
import java.util.Properties;
import java.util.Set;
import java.util.TreeSet;

public class SortedProperties extends Properties {

    @Override
    public Set<Object> keySet(){
        return Collections.unmodifiableSet(new TreeSet<Object>(super.keySet()));
    }

    @Override
    public synchronized Enumeration<Object> keys() {
        return Collections.enumeration(new TreeSet<Object>(super.keySet()));
    }

}
