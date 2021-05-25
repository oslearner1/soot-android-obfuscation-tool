.class final Lorg/jboss/netty/util/internal/au;
.super Ljava/lang/ref/WeakReference;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Lorg/jboss/netty/util/internal/au;->a:I

    return-void
.end method


# virtual methods
.method public final keyHash()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/util/internal/au;->a:I

    return v0
.end method

.method public final keyRef()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
