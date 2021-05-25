.class final Lorg/jboss/netty/util/internal/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field volatile c:Ljava/lang/Object;

.field final d:Lorg/jboss/netty/util/internal/e;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/e;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/jboss/netty/util/internal/e;->b:I

    iput-object p3, p0, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    iput-object p1, p0, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    iput-object p4, p0, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    return-void
.end method
