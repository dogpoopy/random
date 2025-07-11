.class Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDynamicLinksCallbacks.java"

# interfaces
.implements Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    return-object v0
.end method

.method public onCreateShortDynamicLink(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/ShortDynamicLinkImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 162
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {p2, v0, v2}, Lcom/google/firebase/dynamiclinks/internal/ShortDynamicLinkImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    invoke-static {}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;->getDefaultImpl()Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    invoke-static {}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;->getDefaultImpl()Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;->onCreateShortDynamicLink(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/ShortDynamicLinkImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw p1
.end method

.method public onGetDynamicLink(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/common/api/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {p2, v0, v2}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-static {}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;->getDefaultImpl()Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 141
    invoke-static {}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks$Stub;->getDefaultImpl()Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/firebase/dynamiclinks/internal/IDynamicLinksCallbacks;->onGetDynamicLink(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p1
.end method
