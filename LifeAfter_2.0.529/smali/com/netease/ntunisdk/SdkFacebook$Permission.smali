.class final Lcom/netease/ntunisdk/SdkFacebook$Permission;
.super Ljava/lang/Object;
.source "SdkFacebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Permission"
.end annotation


# static fields
.field static final BASIC:[Ljava/lang/String;

.field static final PUBLISH_VIDEO:Ljava/lang/String; = "publish_video"

.field static final USER_FRDS:Ljava/lang/String; = "user_friends"

.field static final USER_LIKES:Ljava/lang/String; = "user_likes"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "public_profile"

    aput-object v2, v0, v1

    .line 76
    sput-object v0, Lcom/netease/ntunisdk/SdkFacebook$Permission;->BASIC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
