.class Lcom/netease/ntunisdk/InstagramShare;
.super Ljava/lang/Object;
.source "InstagramShare.java"


# static fields
.field static final CODE:I

.field private static final MEDIA_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field private static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final TAG:Ljava/lang/String; = "InstagramShare"

.field private static final TYPE_BG_IMAGE:I = 0x2

.field private static final TYPE_BG_VIDEO:I = 0x4

.field private static final TYPE_FT_ONLY:I = 0x1

.field private static final TYPE_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "InstagramShare"

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/InstagramShare;->CODE:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static share(Landroid/app/Activity;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkFacebook;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v9

    .line 38
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v11

    const-string v12, "FACEBOOK_APPID"

    invoke-interface {v11, v12}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 40
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const v11, 0x7f0b01dd

    .line 41
    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    const-string v12, "source_application"

    .line 43
    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x1

    .line 44
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v12, 0x10000000

    .line 45
    invoke-virtual {v10, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "content_url"

    .line 47
    invoke-virtual {v10, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_1
    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "download it firstly"

    const-string v14, "image/*"

    const-string v15, "ftp"

    const-string v9, "http"

    const-string v11, "com.instagram.android"

    move-object/from16 v16, v5

    const-string v5, "InstagramShare"

    if-nez v12, :cond_4

    .line 52
    :try_start_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 72
    invoke-virtual {v2, v6}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v12, "interactive_asset_uri"

    .line 73
    invoke-virtual {v10, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v10, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, 0x1

    .line 75
    invoke-virtual {v0, v11, v6, v12}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const/4 v6, 0x1

    const/4 v12, 0x1

    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    invoke-static {v5, v13}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v3, Lcom/netease/ntunisdk/InstagramShare$1;

    invoke-direct {v3, v1, v0, v2}, Lcom/netease/ntunisdk/InstagramShare$1;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/app/Activity;Lcom/netease/ntunisdk/SdkFacebook;)V

    invoke-static {v0, v6, v3}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->download(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    return-void

    :cond_4
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 81
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v18, v12

    const-string v12, "#"

    if-nez v17, :cond_5

    :try_start_2
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v6

    const-string v6, "top_background_color"

    .line 82
    invoke-virtual {v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    move/from16 v17, v6

    .line 84
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "bottom_background_color"

    .line 85
    invoke-virtual {v10, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string v6, "TYPE_IMAGE"

    .line 87
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "video/*"

    if-eqz v6, :cond_b

    .line 88
    :try_start_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 89
    new-instance v3, Lcom/netease/ntunisdk/InstagramShare$2;

    invoke-direct {v3, v2, v0, v1}, Lcom/netease/ntunisdk/InstagramShare$2;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Landroid/app/Activity;Lcom/netease/ntunisdk/base/ShareInfo;)V

    invoke-static {v0, v1, v3}, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->save(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    return-void

    .line 101
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const-string v3, "not found share bitmap, but found a image uri"

    .line 102
    invoke-static {v5, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v5, v13}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v3, Lcom/netease/ntunisdk/InstagramShare$3;

    invoke-direct {v3, v1, v0, v2}, Lcom/netease/ntunisdk/InstagramShare$3;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/app/Activity;Lcom/netease/ntunisdk/SdkFacebook;)V

    invoke-static {v0, v4, v3}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->download(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    return-void

    .line 121
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "://"

    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 124
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    .line 126
    :cond_a
    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    :goto_3
    invoke-virtual {v10, v3, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x1

    .line 129
    invoke-virtual {v0, v11, v3, v6}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    or-int/lit8 v6, v17, 0x2

    move-object/from16 v3, v16

    :goto_4
    const/16 v18, 0x1

    goto :goto_6

    :cond_b
    const-string v6, "TYPE_VIDEO"

    .line 134
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v3, v16

    .line 135
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_5

    .line 151
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 152
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 153
    invoke-virtual {v10, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v8, 0x1

    .line 154
    invoke-virtual {v0, v11, v6, v8}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    or-int/lit8 v6, v17, 0x4

    goto :goto_4

    :cond_d
    :goto_5
    const-string v4, ""

    .line 136
    new-instance v5, Lcom/netease/ntunisdk/InstagramShare$4;

    invoke-direct {v5, v1, v0, v2}, Lcom/netease/ntunisdk/InstagramShare$4;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/app/Activity;Lcom/netease/ntunisdk/SdkFacebook;)V

    invoke-static {v0, v4, v3, v5}, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;->downloadVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    return-void

    :cond_e
    move-object/from16 v3, v16

    :cond_f
    move/from16 v6, v17

    :goto_6
    if-nez v18, :cond_10

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters not ready, please check your ShareInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void

    :cond_10
    const/4 v1, 0x1

    if-ne v6, v1, :cond_12

    .line 168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 169
    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    invoke-virtual {v10, v1, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 171
    invoke-virtual {v0, v11, v1, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_7

    .line 174
    :cond_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 175
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    invoke-virtual {v10, v1, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 177
    invoke-virtual {v0, v11, v1, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 184
    :cond_12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_14

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_13

    goto :goto_8

    .line 187
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not handle this intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    goto :goto_9

    .line 185
    :cond_14
    :goto_8
    sget v1, Lcom/netease/ntunisdk/InstagramShare;->CODE:I

    invoke-virtual {v0, v10, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :goto_9
    return-void
.end method
