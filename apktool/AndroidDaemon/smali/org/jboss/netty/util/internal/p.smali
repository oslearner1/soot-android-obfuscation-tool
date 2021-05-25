.class final Lorg/jboss/netty/util/internal/p;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field volatile c:Ljava/lang/Object;

.field final d:Lorg/jboss/netty/util/internal/p;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/p;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/jboss/netty/util/internal/p;->b:I

    iput-object p3, p0, Lorg/jboss/netty/util/internal/p;->d:Lorg/jboss/netty/util/internal/p;

    iput-object p1, p0, Lorg/jboss/netty/util/internal/p;->a:Ljava/lang/Object;

    iput-object p4, p0, Lorg/jboss/netty/util/internal/p;->c:Ljava/lang/Object;

    return-void
.end method
