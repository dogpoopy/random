.class public Lcom/netease/ntunisdk/base/model/SdkShare;
.super Lcom/netease/ntunisdk/base/model/SdkState;
.source "SdkShare.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkShare"

.field private static final options:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field public desc:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public miniprogramid:Ljava/lang/String;

.field public miniprogramtype:I

.field public path:Ljava/lang/String;

.field public sharechannel:I

.field public tag:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public thumbimagepath:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public video:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    sput-object v0, Lcom/netease/ntunisdk/base/model/SdkShare;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private setShareThumb(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->thumbimagepath:Ljava/lang/String;

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->image:Ljava/lang/String;

    .line 195
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    long-to-double v1, v1

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    .line 201
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    :goto_0
    mul-int v4, v3, v3

    int-to-double v4, v4

    cmpg-double v6, v4, v1

    if-gez v6, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 206
    :cond_1
    :try_start_1
    sget-object v1, Lcom/netease/ntunisdk/base/model/SdkShare;->options:Landroid/graphics/BitmapFactory$Options;

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 208
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareThumb(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public fromJson(Lorg/json/JSONObject;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;->fromJson(Lorg/json/JSONObject;)V

    const-string v0, "type"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    const-string v0, "text"

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->text:Ljava/lang/String;

    const-string v0, "sharechannel"

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->sharechannel:I

    const-string v0, "image"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->image:Ljava/lang/String;

    const-string v0, "video"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->video:Ljava/lang/String;

    const-string v0, "title"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->title:Ljava/lang/String;

    const-string v0, "link"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->link:Ljava/lang/String;

    const-string v0, "thumbimagepath"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->thumbimagepath:Ljava/lang/String;

    const-string v0, "desc"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->desc:Ljava/lang/String;

    const-string v0, "tag"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->tag:Ljava/lang/String;

    const-string v0, "username"

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->username:Ljava/lang/String;

    const-string v0, "path"

    .line 63
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->path:Ljava/lang/String;

    const-string v0, "miniprogramtype"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->miniprogramtype:I

    const-string v0, "miniprogramid"

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->miniprogramid:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/netease/ntunisdk/base/model/SdkState;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "type"

    .line 72
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "text"

    .line 73
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->sharechannel:I

    if-lez v1, :cond_0

    const-string v2, "sharechannel"

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "image"

    .line 77
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->image:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "video"

    .line 78
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->video:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 79
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link"

    .line 80
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->link:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "thumbimagepath"

    .line 81
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->thumbimagepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    .line 82
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    .line 83
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "username"

    .line 85
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "path"

    .line 86
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "miniprogramtype"

    .line 87
    iget v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->miniprogramtype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "miniprogramid"

    .line 88
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->miniprogramid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public wrapFrom(Ljava/lang/Object;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;->wrapFrom(Ljava/lang/Object;)V

    .line 177
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 178
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    :goto_0
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->code:I

    .line 180
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    :goto_1
    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->message:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public wrapTo()Ljava/lang/Object;
    .locals 4

    .line 98
    new-instance v0, Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/ShareInfo;-><init>()V

    .line 99
    iget v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->sharechannel:I

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    .line 100
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setText(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setDesc(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setTag(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    const-string v2, "TYPE_IMAGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/model/SdkShare;->setShareThumb(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    const-string v2, "TYPE_LINK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setLink(Ljava/lang/String;)V

    const/16 v1, 0x69

    .line 112
    iget v2, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->sharechannel:I

    if-eq v1, v2, :cond_2

    const/16 v1, 0x6a

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/model/SdkShare;->setShareThumb(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_1

    .line 113
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->thumbimagepath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 117
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->thumbimagepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    const-string v2, "TYPE_VIDEO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->video:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setVideoUrl(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/model/SdkShare;->setShareThumb(Lcom/netease/ntunisdk/base/ShareInfo;)V

    .line 139
    :cond_5
    :goto_1
    iget v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->sharechannel:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_a

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_6

    goto :goto_2

    .line 142
    :cond_6
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    const-string v2, "TYPE_SUBSCRIBE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 143
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->miniprogramid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setMiniProgramID(Ljava/lang/String;)V

    goto :goto_2

    .line 146
    :cond_7
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setUserName(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setPath(Ljava/lang/String;)V

    .line 148
    iget v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->miniprogramtype:I

    if-ltz v1, :cond_8

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    :cond_8
    const/4 v1, 0x0

    const-string v2, "SdkShare"

    const-string v3, "miniprogramtype error, sdk will use 0 (for release) instead"

    .line 151
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setMiniProgramType(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_a
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->type:Ljava/lang/String;

    const-string v2, "TYPE_MINI_PROGRAM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 161
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setLink(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setText(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkShare;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setDesc(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/model/SdkShare;->setShareThumb(Lcom/netease/ntunisdk/base/ShareInfo;)V

    :cond_b
    :goto_2
    return-object v0
.end method
