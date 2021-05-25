.class final Lorg/jboss/netty/logging/h;
.super Lorg/osgi/util/tracker/ServiceTracker;


# instance fields
.field private synthetic a:Lorg/jboss/netty/logging/OsgiLoggerFactory;


# direct methods
.method constructor <init>(Lorg/jboss/netty/logging/OsgiLoggerFactory;Lorg/osgi/framework/BundleContext;Ljava/lang/String;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/logging/h;->a:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lorg/osgi/util/tracker/ServiceTracker;-><init>(Lorg/osgi/framework/BundleContext;Ljava/lang/String;Lorg/osgi/util/tracker/ServiceTrackerCustomizer;)V

    return-void
.end method


# virtual methods
.method public final addingService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Lorg/osgi/util/tracker/ServiceTracker;->addingService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osgi/service/log/LogService;

    iget-object v1, p0, Lorg/jboss/netty/logging/h;->a:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    iput-object v0, v1, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logService:Lorg/osgi/service/log/LogService;

    return-object v0
.end method

.method public final removedService(Lorg/osgi/framework/ServiceReference;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/logging/h;->a:Lorg/jboss/netty/logging/OsgiLoggerFactory;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jboss/netty/logging/OsgiLoggerFactory;->logService:Lorg/osgi/service/log/LogService;

    return-void
.end method
