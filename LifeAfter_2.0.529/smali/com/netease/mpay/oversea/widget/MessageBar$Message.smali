.class Lcom/netease/mpay/oversea/widget/MessageBar$Message;
.super Ljava/lang/Object;
.source "MessageBar.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/widget/MessageBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Message"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/mpay/oversea/widget/MessageBar$Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Ljava/lang/String;

.field final c:I

.field final d:Landroid/os/Parcelable;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/widget/MessageBar$Message$a;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/widget/MessageBar$Message$a;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    .line 8
    iput v0, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->e:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->a:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->c:I

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->d:Landroid/os/Parcelable;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/String;ILandroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->a:Ljava/lang/CharSequence;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->b:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->c:I

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->d:Landroid/os/Parcelable;

    .line 6
    iput p2, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->e:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->a:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->d:Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget p2, p0, Lcom/netease/mpay/oversea/widget/MessageBar$Message;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
