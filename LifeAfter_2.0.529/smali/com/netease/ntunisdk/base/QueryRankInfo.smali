.class public Lcom/netease/ntunisdk/base/QueryRankInfo;
.super Ljava/lang/Object;
.source "QueryRankInfo.java"


# static fields
.field public static final QUERY_RANK_SCOPE_ALL:Ljava/lang/String; = "QUERY_RANK_SCOPE_ALL"

.field public static final QUERY_RANK_SCOPE_FRIEND:Ljava/lang/String; = "QUERY_RANK_SCOPE_FRIEND"

.field public static final QUERY_RANK_TYPE_GRADE:Ljava/lang/String; = "QUERY_RANK_TYPE_GRADE"

.field public static final QUERY_RANK_TYPE_SCORE:Ljava/lang/String; = "QUERY_RANK_TYPE_SCORE"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 37
    iput v0, p0, Lcom/netease/ntunisdk/base/QueryRankInfo;->c:I

    return-void
.end method

.method public static jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/QueryRankInfo;
    .locals 4

    .line 91
    new-instance v0, Lcom/netease/ntunisdk/base/QueryRankInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/QueryRankInfo;-><init>()V

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 97
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "queryRankType"

    .line 98
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "queryRankScope"

    .line 99
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "queryRankCount"

    .line 100
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/base/QueryRankInfo;->setQueryRankType(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/QueryRankInfo;->setQueryRankScope(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/QueryRankInfo;->setQueryRankCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "UniSDK QueryRankInfo"

    const-string v2, "jsonStr2Obj error"

    .line 106
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getQueryRankCount()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/netease/ntunisdk/base/QueryRankInfo;->c:I

    return v0
.end method

.method public getQueryRankScope()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netease/ntunisdk/base/QueryRankInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryRankType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/base/QueryRankInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setQueryRankCount(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/netease/ntunisdk/base/QueryRankInfo;->c:I

    return-void
.end method

.method public setQueryRankScope(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/ntunisdk/base/QueryRankInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setQueryRankType(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/netease/ntunisdk/base/QueryRankInfo;->a:Ljava/lang/String;

    return-void
.end method
