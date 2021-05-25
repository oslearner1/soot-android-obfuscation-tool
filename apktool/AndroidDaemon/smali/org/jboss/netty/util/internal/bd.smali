.class final Lorg/jboss/netty/util/internal/bd;
.super Ljava/util/Random;


# static fields
.field private static final c:Ljava/lang/ThreadLocal;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/be;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/be;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/internal/bd;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-void
.end method

.method static a()Lorg/jboss/netty/util/internal/bd;
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/internal/bd;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/internal/bd;

    return-object v0
.end method


# virtual methods
.method protected final next(I)I
    .locals 4

    iget-wide v0, p0, Lorg/jboss/netty/util/internal/bd;->a:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/bd;->a:J

    iget-wide v0, p0, Lorg/jboss/netty/util/internal/bd;->a:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final setSeed(J)V
    .locals 4

    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/bd;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/util/internal/bd;->b:Z

    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/bd;->a:J

    return-void
.end method
