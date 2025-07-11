.class public Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;
.super Ljava/lang/Object;
.source "BindingValuesAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/twitter/sdk/android/core/models/BindingValues;",
        ">;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/twitter/sdk/android/core/models/BindingValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOLEAN_MEMBER:Ljava/lang/String; = "boolean_value"

.field private static final BOOLEAN_TYPE:Ljava/lang/String; = "BOOLEAN"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "IMAGE"

.field private static final IMAGE_VALUE_MEMBER:Ljava/lang/String; = "image_value"

.field private static final STRING_TYPE:Ljava/lang/String; = "STRING"

.field private static final TYPE_MEMBER:Ljava/lang/String; = "type"

.field private static final TYPE_VALUE_MEMBER:Ljava/lang/String; = "string_value"

.field private static final USER_TYPE:Ljava/lang/String; = "USER"

.field private static final USER_VALUE_MEMBER:Ljava/lang/String; = "user_value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/twitter/sdk/android/core/models/BindingValues;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result p2

    if-nez p2, :cond_0

    .line 56
    new-instance p1, Lcom/twitter/sdk/android/core/models/BindingValues;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/models/BindingValues;-><init>()V

    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 62
    new-instance p2, Ljava/util/HashMap;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0, p3}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;->getValue(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Lcom/twitter/sdk/android/core/models/BindingValues;

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/models/BindingValues;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/twitter/sdk/android/core/models/BindingValues;

    move-result-object p1

    return-object p1
.end method

.method getValue(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 7

    const-string v0, "type"

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "BOOLEAN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "IMAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "USER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "STRING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    return-object v1

    :cond_2
    const-string v0, "boolean_value"

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "user_value"

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lcom/twitter/sdk/android/core/models/UserValue;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "image_value"

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Lcom/twitter/sdk/android/core/models/ImageValue;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "string_value"

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6d97abef -> :sswitch_3
        0x27e3cb -> :sswitch_2
        0x428b13b -> :sswitch_1
        0x2ea6f808 -> :sswitch_0
    .end sparse-switch
.end method

.method public serialize(Lcom/twitter/sdk/android/core/models/BindingValues;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 33
    check-cast p1, Lcom/twitter/sdk/android/core/models/BindingValues;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;->serialize(Lcom/twitter/sdk/android/core/models/BindingValues;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
