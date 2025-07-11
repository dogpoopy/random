.class public Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
.super Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;
.source "TransmissionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/TransmissionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/netease/mpay/oversea/s9;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/netease/mpay/oversea/g6;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/netease/mpay/oversea/g6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData$a;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData$a;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 19
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;-><init>(Landroid/os/Parcel;)V

    .line 20
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->f:Z

    .line 22
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    const/4 v2, 0x0

    .line 23
    iput-boolean v2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    .line 25
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/g6;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/s9;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->f:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/g6;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/g6;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;-><init>()V

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->f:Z

    .line 5
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    .line 8
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/g6;

    .line 16
    invoke-direct {p0, p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Lcom/netease/mpay/oversea/r4;)I

    move-result p3

    iput p3, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->a:I

    .line 17
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 18
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/r4;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/ui/TransmissionData;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/r4;
    .locals 2

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/ui/TransmissionData;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/ui/TransmissionData;->a()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/r4;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/g6;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    return-object p0
.end method

.method public b()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method

.method public b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    return-object p0
.end method

.method public b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->f:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 5
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 6
    iget-boolean p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-boolean p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-boolean p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
