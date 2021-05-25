.class final Lorg/jboss/netty/handler/timeout/f;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field volatile b:Lorg/jboss/netty/util/Timeout;

.field volatile c:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/f;->c:J

    return-void
.end method
