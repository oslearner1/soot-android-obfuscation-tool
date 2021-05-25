.class final Lorg/jboss/netty/logging/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private synthetic a:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method constructor <init>(Lorg/jboss/netty/logging/InternalLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public final log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public final log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p3}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/logging/c;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
