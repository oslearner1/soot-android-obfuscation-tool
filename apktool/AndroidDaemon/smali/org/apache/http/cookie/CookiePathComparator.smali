.class public Lorg/apache/http/cookie/CookiePathComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/http/cookie/a;

    check-cast p2, Lorg/apache/http/cookie/a;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookiePathComparator;->compare(Lorg/apache/http/cookie/a;Lorg/apache/http/cookie/a;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/cookie/a;Lorg/apache/http/cookie/a;)I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
