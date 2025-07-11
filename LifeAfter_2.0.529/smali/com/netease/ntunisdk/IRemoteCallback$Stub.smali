.class public abstract Lcom/netease/ntunisdk/IRemoteCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteCallback.java"

# interfaces
.implements Lcom/netease/ntunisdk/IRemoteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/IRemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/IRemoteCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.netease.ntunisdk.IRemoteCallback"

.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_call2:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.netease.ntunisdk.IRemoteCallback"

    .line 30
    invoke-virtual {p0, p0, v0}, Lcom/netease/ntunisdk/IRemoteCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/netease/ntunisdk/IRemoteCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.netease.ntunisdk.IRemoteCallback"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/netease/ntunisdk/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/netease/ntunisdk/IRemoteCallback;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/IRemoteCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/IRemoteCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/netease/ntunisdk/IRemoteCallback;
    .locals 1

    .line 153
    sget-object v0, Lcom/netease/ntunisdk/IRemoteCallback$Stub$Proxy;->sDefaultImpl:Lcom/netease/ntunisdk/IRemoteCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/netease/ntunisdk/IRemoteCallback;)Z
    .locals 1

    .line 146
    sget-object v0, Lcom/netease/ntunisdk/IRemoteCallback$Stub$Proxy;->sDefaultImpl:Lcom/netease/ntunisdk/IRemoteCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 147
    sput-object p0, Lcom/netease/ntunisdk/IRemoteCallback$Stub$Proxy;->sDefaultImpl:Lcom/netease/ntunisdk/IRemoteCallback;

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

    const-string v1, "com.netease.ntunisdk.IRemoteCallback"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 83
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

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/IRemoteCallback$Stub;->call2(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 63
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/IRemoteCallback$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
