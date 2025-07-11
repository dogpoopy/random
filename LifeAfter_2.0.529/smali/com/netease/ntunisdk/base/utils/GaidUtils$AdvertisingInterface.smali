.class final Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;
.super Ljava/lang/Object;
.source "GaidUtils.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/utils/GaidUtils;
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

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getId(Landroid/content/Context;)V
    .locals 7

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 226
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v6, 0x2

    invoke-interface {v4, v6, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 239
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / limit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GaidUtils"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    invoke-static {p1, v3}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, ""

    .line 249
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->access$100(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw p1
.end method
