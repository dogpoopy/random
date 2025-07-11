.class public Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
.super Ljava/lang/Object;
.source "MediaInfoEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public absolutePath:Ljava/lang/String;

.field public bucketName:Ljava/lang/String;

.field public cover:Ljava/lang/String;

.field public duration:I

.field public editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field public height:I

.field public isDirectlyEdited:Z

.field public mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

.field public mediaTypeString:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public orientation:I

.field public overDuration:Z

.field public overSize:Z

.field public previewListSelected:Z

.field public resId:I

.field public selectedIndex:I

.field public size:J

.field public suffix:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 64
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mimeType:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->cover:Ljava/lang/String;

    .line 78
    const-class v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->isDirectlyEdited:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 42
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    .line 43
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mimeType:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    .line 46
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 47
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 48
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    .line 49
    iget-wide v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    iput-wide v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    .line 50
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 51
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    .line 52
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    .line 53
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 54
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->cover:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->cover:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 57
    iget-boolean v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->isDirectlyEdited:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->isDirectlyEdited:Z

    .line 58
    iget-boolean v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    .line 59
    iget-boolean p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-wide v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->cover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-boolean p2, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->previewListSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    iget-boolean p2, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->isDirectlyEdited:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget-boolean p2, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-boolean p2, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
