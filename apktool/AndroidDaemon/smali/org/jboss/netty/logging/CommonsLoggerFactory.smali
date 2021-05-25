.class public Lorg/jboss/netty/logging/CommonsLoggerFactory;
.super Lorg/jboss/netty/logging/InternalLoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/InternalLoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
    .locals 2

    invoke-static {p1}, Landroid/support/v4/media/c;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/a;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/logging/b;

    invoke-direct {v1, v0, p1}, Lorg/jboss/netty/logging/b;-><init>(Lorg/apache/commons/logging/a;Ljava/lang/String;)V

    return-object v1
.end method
