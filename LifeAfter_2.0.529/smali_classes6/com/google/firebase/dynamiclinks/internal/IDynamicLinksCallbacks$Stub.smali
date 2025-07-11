.class public abstract Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDynamicLinksCallbacks.java"

# interfaces
.implements Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

.field static final TRANSACTION_onCreateShortDynamicLink:I = 0x2

.field static final TRANSACTION_onGetDynamicLink:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;
    .locals 1

    .line 196
    sget-object v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;->sDefaultImpl:Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;)Z
    .locals 1

    .line 186
    sget-object v0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;->sDefaultImpl:Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 190
    sput-object p0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;->sDefaultImpl:Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 187
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 81
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 90
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3

    .line 91
    sget-object p3, Lcom/google/firebase/dynamiclinks/internal/ShortDynamicLinkImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/ShortDynamicLinkImpl;

    .line 96
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;->onCreateShortDynamicLink(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/ShortDynamicLinkImpl;)V

    return v1

    .line 61
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 64
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    goto :goto_1

    :cond_5
    move-object p1, v0

    .line 70
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_6

    .line 71
    sget-object p3, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    .line 76
    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;->onGetDynamicLink(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V

    return v1
.end method
