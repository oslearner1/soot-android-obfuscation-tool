.class public final Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

.field private b:Z

.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/Comparator;

.field private e:Ljava/util/Comparator;

.field private f:Ljava/util/Comparator;

.field private g:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/vivo/PCTools/PhoneInfo/e;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PhoneInfo/e;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->d:Ljava/util/Comparator;

    new-instance v0, Lcom/vivo/PCTools/PhoneInfo/f;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PhoneInfo/f;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->e:Ljava/util/Comparator;

    new-instance v0, Lcom/vivo/PCTools/PhoneInfo/g;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PhoneInfo/g;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->f:Ljava/util/Comparator;

    new-instance v0, Lcom/vivo/PCTools/PhoneInfo/h;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PhoneInfo/h;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->g:Ljava/util/Comparator;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->name:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->name:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->d:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->size:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->e:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->date:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->f:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->type:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->g:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;J)I
    .locals 3

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p1, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getComparator()Ljava/util/Comparator;
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public final getSortMethod()Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    return-object v0
.end method

.method public final setFileFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->b:Z

    return-void
.end method

.method public final setSortMethog(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    return-void
.end method
