.class final Lorg/jboss/netty/util/internal/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lorg/jboss/netty/util/internal/bc;

.field private b:Ljava/lang/Object;

.field private c:Lorg/jboss/netty/util/internal/bc;

.field private d:Lorg/jboss/netty/util/internal/bc;

.field private synthetic e:Lorg/jboss/netty/util/internal/LinkedTransferQueue;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/LinkedTransferQueue;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/util/internal/bb;->e:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/bb;->a(Lorg/jboss/netty/util/internal/bc;)V

    return-void
.end method

.method private a(Lorg/jboss/netty/util/internal/bc;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/bb;->c:Lorg/jboss/netty/util/internal/bc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/bc;->c()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/bb;->d:Lorg/jboss/netty/util/internal/bc;

    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/jboss/netty/util/internal/bb;->c:Lorg/jboss/netty/util/internal/bc;

    :goto_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/bb;->e:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->head:Lorg/jboss/netty/util/internal/bc;

    :goto_2
    if-eqz v0, :cond_5

    if-ne v0, p1, :cond_4

    move-object p1, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/bb;->d:Lorg/jboss/netty/util/internal/bc;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/bc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object v1, p0, Lorg/jboss/netty/util/internal/bb;->d:Lorg/jboss/netty/util/internal/bc;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    iget-boolean v2, v0, Lorg/jboss/netty/util/internal/bc;->a:Z

    if-nez v2, :cond_6

    :cond_5
    iput-object v1, p0, Lorg/jboss/netty/util/internal/bb;->a:Lorg/jboss/netty/util/internal/bc;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/bb;->b:Ljava/lang/Object;

    return-void

    :cond_6
    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/bb;->a:Lorg/jboss/netty/util/internal/bc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/bb;->a:Lorg/jboss/netty/util/internal/bc;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/bb;->b:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/bb;->a(Lorg/jboss/netty/util/internal/bc;)V

    return-object v1
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/bb;->c:Lorg/jboss/netty/util/internal/bc;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/bb;->c:Lorg/jboss/netty/util/internal/bc;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/bc;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/bb;->e:Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/bb;->d:Lorg/jboss/netty/util/internal/bc;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;->unsplice(Lorg/jboss/netty/util/internal/bc;Lorg/jboss/netty/util/internal/bc;)V

    :cond_1
    return-void
.end method
