.class final Lorg/jboss/netty/logging/d;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;


# instance fields
.field private final a:Lorg/jboss/logging/Logger;


# direct methods
.method constructor <init>(Lorg/jboss/logging/Logger;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/d;->a:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
