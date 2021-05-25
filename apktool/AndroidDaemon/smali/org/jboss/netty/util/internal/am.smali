.class final Lorg/jboss/netty/util/internal/am;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field volatile c:Ljava/lang/Object;

.field final d:Lorg/jboss/netty/util/internal/am;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/am;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/jboss/netty/util/internal/am;->b:I

    iput-object p3, p0, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    new-instance v0, Lorg/jboss/netty/util/internal/au;

    invoke-direct {v0, p1, p2, p5}, Lorg/jboss/netty/util/internal/au;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/am;->a:Ljava/lang/Object;

    iput-object p4, p0, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lorg/jboss/netty/util/internal/au;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/am;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
