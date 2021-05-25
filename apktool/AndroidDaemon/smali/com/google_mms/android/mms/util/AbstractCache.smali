.class public abstract Lcom/google_mms/android/mms/util/AbstractCache;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_CACHED_ITEMS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AbstractCache"


# instance fields
.field private final mCacheMap:Ljava/util/HashMap;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google_mms/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;->hit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;->hit:I

    iget-object v0, v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purgeAll()V
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google_mms/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;-><init>(Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;)V

    iput-object p2, v0, Lcom/google_mms/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google_mms/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
