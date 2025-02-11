from openai import OpenAI

client = OpenAI(api_key='nope - text me for this and be sure not to push it to the github')

request = input('What would you like to cook today? ')

completion = client.chat.completions.create(
    model="gpt-4o-mini",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {
            "role": "user",
            "content": f'Give me a recipe for {request}'
        }
    ]
)

print(completion.choices[0].message.content)