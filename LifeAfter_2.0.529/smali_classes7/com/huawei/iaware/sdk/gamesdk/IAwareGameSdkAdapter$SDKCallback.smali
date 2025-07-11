.class Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;
.super Landroid/os/Binder;
.source "IAwareGameSdkAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKCallback"
.end annotation


# static fields
.field private static final SDK_CALLBACK_DESCRIPTOR:Ljava/lang/String; = "com.huawei.iaware.sdk.ISDKCallbak"

.field private static final TRANSACTION_updatePhoneInfo:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;


# direct methods
.method public constructor <init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.huawei.iaware.sdk.ISDKCallbak"

    .line 85
    invoke-virtual {p0, p0, p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const v1, 0xffffff

    if-gt p1, v1, :cond_2

    const/4 p3, 0x0

    if-eq p1, v0, :cond_0

    return p3

    :cond_0
    :try_start_0
    const-string p1, "com.huawei.iaware.sdk.ISDKCallbak"

    .line 94
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "info: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " isRegistedSuccess: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {p3}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "IAwareGameSdkAdapter"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {p2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$100(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {p2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "CBK"

    .line 101
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {p2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$100(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;->getPhoneInfo(Ljava/lang/String;)V

    :cond_1
    return v0

    :catch_0
    return p3

    .line 109
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method
