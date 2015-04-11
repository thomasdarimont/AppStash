package io.github.zutherb.appstash.shop.ui.mbean;

import org.springframework.jmx.export.annotation.ManagedOperation;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@Component("designSelector")
@ManagedResource(objectName = "io.github.zutherb.appstash.ui:name=DesignSelector")
public class DesignSelectorBean implements DesignSelector {
    private final AtomicInteger designCounter;

    public DesignSelectorBean() {
        designCounter = new AtomicInteger();
    }

    @ManagedOperation
    @Override
    public String getDesignType() {
        int index = designCounter.get() % DesignType.values().length;
        return DesignType.names().get(index);
    }

    @ManagedOperation
    @Override
    public void setDesignType(String name) {
        int index = DesignType.names().indexOf(name);
        designCounter.set(index);
    }

    @ManagedOperation
    @Override
    public List<String> getAvailableDesignTypes() {
        return DesignType.names();
    }

    @ManagedOperation
    @Override
    public void standard() {
        designCounter.intValue();
    }

    @ManagedOperation
    @Override
    public void next() {
        designCounter.incrementAndGet();
    }

}
