.class public Lcom/vivo/PCTools/BookMark/BookmarkData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private access:J

.field private bookmark:I

.field private created:J

.field private date:J

.field private description:Ljava/lang/String;

.field private favicon:[B

.field private folderid:I

.field private folderlevel:I

.field private id:I

.field private modified:J

.field private name:Ljava/lang/String;

.field private parentid:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private visits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;I[BIIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->id:I

    iput-object p2, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->url:Ljava/lang/String;

    iput p4, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->visits:I

    iput-wide p5, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->date:J

    iput-wide p7, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->created:J

    iput-wide p9, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->modified:J

    iput-wide p11, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->access:J

    iput-object p13, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->description:Ljava/lang/String;

    iput p14, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->bookmark:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->favicon:[B

    move/from16 v0, p16

    iput v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->folderid:I

    move/from16 v0, p17

    iput v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->parentid:I

    move/from16 v0, p18

    iput v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->folderlevel:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccess()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->access:J

    return-wide v0
.end method

.method public getBookmark()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->bookmark:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->created:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->date:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIcon()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->favicon:[B

    return-object v0
.end method

.method public getFolderId()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->folderid:I

    return v0
.end method

.method public getFolderlevel()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->folderlevel:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->id:I

    return v0
.end method

.method public getModified()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->modified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentid()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->parentid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisits()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->visits:I

    return v0
.end method

.method public setAccess(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->access:J

    return-void
.end method

.method public setBookmark(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->bookmark:I

    return-void
.end method

.method public setCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->created:J

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->date:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->description:Ljava/lang/String;

    return-void
.end method

.method public setFavicon([B)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->favicon:[B

    return-void
.end method

.method public setFolderId(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->folderid:I

    return-void
.end method

.method public setFolderlevel(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->folderlevel:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->id:I

    return-void
.end method

.method public setModified(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->modified:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentid(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->parentid:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->url:Ljava/lang/String;

    return-void
.end method

.method public setVisits(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkData;->visits:I

    return-void
.end method
