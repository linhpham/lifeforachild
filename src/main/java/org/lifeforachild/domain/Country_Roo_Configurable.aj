package org.lifeforachild.domain;

import org.springframework.beans.factory.annotation.Configurable;

privileged aspect Country_Roo_Configurable {
    
    declare @type: Country: @Configurable;    
    
}
