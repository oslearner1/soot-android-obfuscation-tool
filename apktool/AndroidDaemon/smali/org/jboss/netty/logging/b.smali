.class final Lorg/jboss/netty/logging/b;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;


# instance fields
.field private final a:Lorg/apache/commons/logging/a;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/commons/logging/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    iput-object p2, p0, Lorg/jboss/netty/logging/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0}, Lorg/apache/commons/logging/a;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/a;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/b;->a:Lorg/apache/commons/logging/a;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/a;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
