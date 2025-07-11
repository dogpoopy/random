.class public abstract Lcom/netease/ntunisdk/IRemoteService$Stub;
.super Landroid/os/Binder;
.source "IRemoteService.java"

# interfaces
.implements Lcom/netease/ntunisdk/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/IRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.netease.ntunisdk.IRemoteService"

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_send:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.netease.ntunisdk.IRemoteService"

    .line 30
    invoke-virtual {p0, p0, v0}, Lcom/netease/ntunisdk/IRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/netease/ntunisdk/IRemoteService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.netease.ntunisdk.IRemoteService"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/netease/ntunisdk/IRemoteService;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/netease/ntunisdk/IRemoteService;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/IRemoteService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/IRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/netease/ntunisdk/IRemoteService;
    .locals 1

    .line 150
    sget-object v0, Lcom/netease/ntunisdk/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/netease/ntunisdk/IRemoteService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/netease/ntunisdk/IRemoteService;)Z
    .locals 1

    .line 143
    sget-object v0, Lcom/netease/ntunisdk/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/netease/ntunisdk/IRemoteService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 144
    sput-object p0, Lcom/netease/ntunisdk/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/netease/ntunisdk/IRemoteService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.netease.ntunisdk.IRemoteService"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 58
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 72
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/IRemoteService$Stub;->send(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 63
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/ntunisdk/IRemoteCallback;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/IRemoteService$Stub;->register(Lcom/netease/ntunisdk/IRemoteCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
