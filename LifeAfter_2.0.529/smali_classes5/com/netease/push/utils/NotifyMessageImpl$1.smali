.class Lcom/netease/push/utils/NotifyMessageImpl$1;
.super Ljava/lang/Object;
.source "NotifyMessageImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/utils/NotifyMessageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netease/push/utils/NotifyMessageImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netease/push/utils/NotifyMessageImpl;
    .locals 1

    .line 355
    new-instance v0, Lcom/netease/push/utils/NotifyMessageImpl;

    invoke-direct {v0, p1}, Lcom/netease/push/utils/NotifyMessageImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 346
    invoke-virtual {p0, p1}, Lcom/netease/push/utils/NotifyMessageImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netease/push/utils/NotifyMessageImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/netease/push/utils/NotifyMessageImpl;
    .locals 0

    .line 349
    new-array p1, p1, [Lcom/netease/push/utils/NotifyMessageImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 346
    invoke-virtual {p0, p1}, Lcom/netease/push/utils/NotifyMessageImpl$1;->newArray(I)[Lcom/netease/push/utils/NotifyMessageImpl;

    move-result-object p1

    return-object p1
.end method
