.class final Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;
.super Ljava/lang/Object;
.source "GaidUtils.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/utils/GaidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingInterface"
.end annotation


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 233
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getId(Landroid/content/Context;)V
    .locals 8

    const-string v0, "GaidUtils"

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 242
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 245
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v7, 0x2

    invoke-interface {v5, v7, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 251
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 252
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    const-string v6, "AdvertisingInterface getId"

    .line 255
    invoke-static {v0, v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / limit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    .line 264
    invoke-static {p1, v4}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    throw p1
.end method
