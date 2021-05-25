.class final Lorg/jboss/netty/handler/codec/spdy/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/a;->a:I

    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/spdy/a;->b:Z

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/spdy/a;->c:Z

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/a;->a:I

    return v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/a;->a:I

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/a;->b:Z

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/a;->c:Z

    return-void
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/a;->b:Z

    return v0
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/a;->c:Z

    return v0
.end method
